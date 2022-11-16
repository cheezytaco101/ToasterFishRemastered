extends Node3D

var turn_total = 0
var turn_amount = 0.2
var shot_force = 50

func _process(delta):
	
	get_input()
	
	rotation.y = lerp_angle(rotation.y, turn_total, 0.05)

func get_input():
	
	if Input.is_action_just_pressed("DialLeft"):
		turn_total += turn_amount
	if Input.is_action_just_pressed("DialRight"):
		turn_total -= turn_amount
	if Input.is_action_just_pressed("Lever"):
		get_node("Gilliam").enable_physics()
		get_node("Gilliam").add_impulse(get_node("Toast_Rig").global_transform.basis.y * shot_force)
