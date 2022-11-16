extends Node3D

var bones = ["Physical Bone Gill_Root", "Physical Bone Gill_Abdo"]
var skele

func _ready():
	skele = get_node("Gill_Rig/Skeleton3D")

#Enable physics when being shot
func enable_physics():
	skele.physical_bones_start_simulation(bones)

#Apply impulse to all bones
func add_impulse(impulse : Vector3):
	for i in bones:
		skele.get_node(i).apply_central_impulse(impulse)
