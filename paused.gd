extends Control

var is_paused = false

# Setter for is_paused variable
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	if is_paused:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

# Handle input events
func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		is_paused = !is_paused
		set_is_paused(is_paused)

# Handle "Back to Game" button press
func _on_back_2_game_pressed():
	set_is_paused(false)

# Handle "Quit" button press
func _on_quit_pressed():
	get_tree().quit()
