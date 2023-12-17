extends Control

func _on_ApplyChanges_pressed():
	get_tree().change_scene("res://main.tscn")
	
func _on_BackToMenu_pressed():
	get_tree().change_scene("res://main.tscn")

func _on_RestoreDefaultSettings_pressed():
	get_tree().change_scene("res://main.tscn")
