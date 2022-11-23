extends Node3D

var toaster
var cam
var turn_amount = 0.1


func _ready():
	toaster = get_node("Toaster")
	cam = get_node("PivotCam")

func _process(delta):
	get_input()
	cam.turn = toaster.turn + PI
	
func get_input():
	if Input.is_action_just_pressed("DialLeft"):
		toaster.turn += turn_amount
	if Input.is_action_just_pressed("DialRight"):
		toaster.turn -= turn_amount
	if Input.is_action_just_released("Lever"):
		toaster.shoot_fish()
