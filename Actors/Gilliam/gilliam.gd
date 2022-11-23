extends Node3D

var bones = ["Physical Bone Gill_Root", "Physical Bone Gill_Abdo"]
var skele
var shot = false

func _ready():
	skele = get_node("Gill_Rig/Skeleton3D")
	
func _physics_process(delta):
	#flop input
	if shot and Input.is_action_just_pressed("Lever"):
		add_impulse(Vector3.UP * 10)

#Enable physics when being shot
func enable_physics():
	skele.physical_bones_start_simulation(bones)
	shot = true

#Apply impulse to all bones
func add_impulse(impulse : Vector3):
	for i in bones:
		skele.get_node(i).apply_central_impulse(impulse)
