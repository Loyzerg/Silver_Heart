extends Node2D



func _ready():
	pass 
	

var x = false
func _input(event):
	if event.is_action_pressed("ui_end") or event.is_action_pressed("ui_cancel") or ($Interface/Button.pressed):
		if (x == false) and (get_tree().paused == false):
			$Interface.visible = true
			get_tree().paused = true
			x = true
			return
			
		if x == true:
			$Interface.visible = false
			get_tree().paused = false
			x = false
			return
