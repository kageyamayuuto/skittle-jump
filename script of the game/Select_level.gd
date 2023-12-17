extends Control


func _ready():
	pass


func _on_level01_pressed():
	get_tree().change_scene("res://environment/Level01.tscn")


func _on_level02_pressed():
	get_tree().change_scene("res://environment/Level02.tscn")


func _on_level03_pressed():
	get_tree().change_scene("res://environment/Level03.tscn")
