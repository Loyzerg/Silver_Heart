extends Node2D



func _ready():
	pass 
	

var xray = false
func _input(event):
	var pl = get_parent().get_player()
	if event.is_action_pressed("ui_focus_next"):
		if xray == false:
			$Xray_filter.visible = true
			if pl.vision_lvl >= 0: 
				$Eye_lvl0.visible = true
			xray = true
			return
			
		if xray == true:
			$Xray_filter.visible = false
			$Eye_lvl0.visible = false
			xray = false
			return
