extends Node2D



func _ready():
	pass 


var back_menue_bool = false
func _input(event):
	if event.is_action_pressed("back_i_click") or ($Interface/Button.pressed):
		if back_menue_bool == false and (get_tree().paused == false):
			$Interface.visible = true
			get_tree().paused = true
			back_menue_bool = true
			return
		if back_menue_bool == true:
			$Interface/Missions.visible = true
			$Interface/Inventory.visible = false
			$Interface/Map.visible = false
			$Interface/Gloss.visible = false
			$Interface/Last.visible = false
			$Interface.visible = false
			$Interface/Inventory/UInventory/Control/Panel.visible = false
			get_tree().paused = false
			back_menue_bool = false
			return
