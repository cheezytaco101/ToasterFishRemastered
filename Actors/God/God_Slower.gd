extends Node3D

var anim

# Called when the node enters the scene tree for the first time.
func _ready():
	anim = get_node("AnimationPlayer")
	anim.play("God_RigAction002")
