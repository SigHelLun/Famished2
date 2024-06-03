extends CharacterBody3D

const SPEED = 5.0
const SPRINT_MULTIPLIER = 2.0
const JUMP_VELOCITY = 3.0
const ROTATION_SENSITIVITY = 0.01
const CAMERA_MIN_PITCH = deg_to_rad(-60)
const CAMERA_MAX_PITCH = deg_to_rad(60)

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var neck = $Neck
@onready var camera = $Neck/Camera3D
@onready var anim = $Neck/animationplayerfamished2/AnimationPlayer
@onready var breath = $breath
@onready var walk = $walk

var testitem = true

func _unhandled_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
    elif event.is_action_pressed("ui_cancel"):
        Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED and event is InputEventMouseMotion:
        neck.rotate_y(-event.relative.x * ROTATION_SENSITIVITY)
        camera.rotate_x(-event.relative.y * ROTATION_SENSITIVITY)
        camera.rotation.x = clamp(camera.rotation.x, CAMERA_MIN_PITCH, CAMERA_MAX_PITCH)

func _physics_process(delta: float) -> void:
    handle_gravity(delta)
    handle_jumping()
    handle_movement(delta)
    move_and_slide()

func handle_gravity(delta: float) -> void:
    if not is_on_floor():
        velocity.y -= gravity * delta
        breath.play()

func handle_jumping() -> void:
    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = JUMP_VELOCITY

func handle_movement(delta: float) -> void:
    var speed = SPEED
    if Input.is_action_pressed("sprint"):
        speed *= SPRINT_MULTIPLIER
        breath.play()

    var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
    var direction = (neck.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
    if direction != Vector3.ZERO:
        anim.play("walkingInplace")
        velocity.x = direction.x * speed
        velocity.z = direction.z * speed
    else:
        anim.play("idle_001")
        velocity.x = move_toward(velocity.x, 0, SPEED)
        velocity.z = move_toward(velocity.z, 0, SPEED)
        walk.play()

func _on_car_body_entered(_body):
    _handle_death()

func _on_car_2_body_entered(_body):
    _handle_death()

func _handle_death() -> void:
    print("death")
    get_tree().change_scene_to_file("res://endings/death.tscn")

