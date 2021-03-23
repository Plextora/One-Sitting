# You better not do what I think your going to do.
# Don't you dare change the code so that you can never die.
# I'll be watching you...
extends Area2D

var time = 0


func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("deathscreen.tscn")
