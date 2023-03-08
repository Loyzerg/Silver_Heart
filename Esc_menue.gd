extends Node2D



func _ready():
	pass 
var Back_menue_class = load("res://Back_menue.gd")

var TF = Back_menue_class.new()

var esc_menue_bool = false
func _input(event):
	if (event.is_action_pressed("ui_end") or event.is_action_pressed("ui_cancel") or ($Interface/Button.pressed)) and (TF.back_menue_bool == true):
		if (esc_menue_bool == false) and (get_tree().paused == false):
			$Interface.visible = true
			get_tree().paused = true
			esc_menue_bool = true
			return
			
		if esc_menue_bool == true:
			$Interface.visible = false
			get_tree().paused = false
			esc_menue_bool = false
			return
