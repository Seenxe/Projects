extends Area2D
 
onready var animationPlayer = $AnimationPlayer
 
func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	animationPlayer.play("idle")
 
	for body in bodies:
		if body.name == "KinematicBody2D":
			body.contadorMonedas += 1
			get_parent().remove_child(self)
			print(body.contadorMonedas)
