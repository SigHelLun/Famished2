extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 3

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
@onready var neck := $Neck
@onready var camera := $Neck/Camera3D
@onready var anim = $Neck/animationplayerfamished2/AnimationPlayer
@onready var breath = $breath
@onready var walk = $walk
var testitem = true

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	elif event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		if event is InputEventMouseMotion:
			neck.rotate_y(-event.relative.x * 0.01)
			camera.rotate_x(-event.relative.y * 0.01)
			camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-60), deg_to_rad(60))

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta
		breath.play()
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var direction = (neck.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		anim.play("walkingInplace")
#		walkMP3.play()
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		anim.play("idle_001")  # Play the idle animation
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		walk.play()
	move_and_slide()


func _on_car_body_entered(body):
	print("death")
	get_tree().change_scene_to_file("res://endings/death.tscn")


func _on_car_2_body_entered(body):
	print("death")
	get_tree().change_scene_to_file("res://endings/death.tscn")
