extends Skeleton3D

var bones = ["Physical Bone Gill_Root", "Physical Bone Gill_Abdo"]

# Called when the node enters the scene tree for the first time.
func _ready():
	physical_bones_start_simulation(bones)
	
func _physics_process(delta):
	get_input()
	
func get_input():
	if Input.is_action_just_pressed("Jump"):
		for i in bones:
			get_node(i).apply_central_impulse(Vector3.UP * 10)
