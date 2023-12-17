extends Area

func _on_DeathZone_body_entered(body):
	if body.name == "Ball":
		get_tree().change_scene("res://gameover.tscn")
		
