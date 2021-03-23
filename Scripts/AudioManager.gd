extends Node

func play_music(music):
	$Music_Player.stream = music
	$Music_Player.play()

func play_effect(clip):
	var n = $Effect_Player.get_child_count()
	
	for i in range(n):
		var child = $Effect_Player.get_child(i)
		if !child.playing:
			child.stream = clip
			child.play()
			return
