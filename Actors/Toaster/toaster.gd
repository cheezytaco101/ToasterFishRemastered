extends Node3D

var turn = 0
var shot_force = 30
var gilliam

func _ready():
	gilliam = get_node("Gilliam")

func _process(delta):
	#Lerp angle according to dial turn amount
	rotation.y = lerp_angle(rotation.y, turn, 0.1)
		
			
func shoot_fish():
	if !gilliam.shot:
			gilliam.enable_physics()
			gilliam.add_impulse(get_node("Toast_Rig").global_transform.basis.y * shot_force)
