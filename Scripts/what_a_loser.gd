extends VideoPlayer


var time = 0


func _physics_process(delta):
		 time += delta
		 if time >= 30:
				get_tree().quit()
