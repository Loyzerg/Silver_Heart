extends Node2D



func _ready():
	pass 


var esc_menue_bool = false
func _input(event):
	if (event.is_action_pressed("ui_cancel") or ($Interface/Button.pressed)):
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
func _physics_process(delta):
			if $Interface/Exit.pressed:
					get_tree().quit()
