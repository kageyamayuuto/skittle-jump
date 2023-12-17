extends Control

func _on_Restart_pressed():
	get_tree().change_scene("res://environment/Level01.tscn")


func _on_Back_pressed():
	get_tree().change_scene("res://main.tscn")


func _on_SelectLevel_pressed():
	get_tree().change_scene("res://select_level.tscn")


func _on_Options_pressed():
	get_tree().change_scene("res://options.tscn")


func _on_LinkButton_pressed():
	OS.shell_open("https://youtube.com/@GodotAcademy")
