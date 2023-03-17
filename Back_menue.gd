extends Node2D



func _ready():
	pass 


var back_menue_bool = false
func _input(event):
	if event.is_action_pressed("back_i_click") or ($Interface/Button.pressed):
		if(get_parent().get_node("CameraLoc").current == true):
			position.x = 0
			position.y = 0
			#абсолютно то же самое, что и в Esc_menue
			if back_menue_bool == false and (get_tree().paused == false):
				$Interface.visible = true
				#
				var quests = get_parent().get_player().quests
				$Interface/Missions/UIQuests/ControlQ.toggle_quest(quests)
				#
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
				$Interface/Gloss/UIgloss/ControlGloss/PanelGloss.visible = false
				$Interface/Missions/UIQuests/ControlQ/PanelQ.visible = false
				get_tree().paused = false
				back_menue_bool = false
				return
		if(get_parent().get_node("Player").get_node("CameraPlayer").current == true):
			position.x = get_parent().get_node("Player").get_node("PlayerCollision").global_position.x - 741
			position.y = get_parent().get_node("Player").get_node("PlayerCollision").global_position.y - 530
			if back_menue_bool == false and (get_tree().paused == false):
				$Interface.visible = true
				#
				var quests = get_parent().get_player().quests
				$Interface/Missions/UIQuests/ControlQ.toggle_quest(quests)
				#
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
				$Interface/Gloss/UIgloss/ControlGloss/PanelGloss.visible = false
				$Interface/Missions/UIQuests/ControlQ/PanelQ.visible = false
				get_tree().paused = false
				back_menue_bool = false
				return
