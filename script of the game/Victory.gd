extends Control

export(String, FILE, "*.tscn") var NEXT_LEVEL = ""

func _on_restart_pressed():
	get_tree().reload_current_scene()


func _on_options_pressed():
	get_tree().change_scene("res://options.tscn")


func _on_backtomainmenu_pressed():
	get_tree().change_scene("res://main.tscn")


func _on_changelevel_pressed():
	get_tree().change_scene("res://select_level.tscn")
