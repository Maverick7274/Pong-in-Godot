extends Control

func _ready():
	$VBoxContainer/Play.grab_focus()
	


func _on_Play_pressed():
	get_tree().change_scene("res://Level/Level.tscn")




func _on_Quit_pressed():
	get_tree().quit()
