extends Control

func _on_Play_pressed():
	get_tree().change_scene("res://environment/Level01.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()

func _on_SelectLevel_pressed():
	get_tree().change_scene("res://select_level.tscn")

func _on_Options_pressed():
	get_tree().change_scene("res://options.tscn")
