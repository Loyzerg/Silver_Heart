extends Area2D


func _ready():
	pass 

func _input(event):
	if $mis.pressed:
		if $Missions.visible != true:
			var quests = get_parent().get_parent().get_player().quests
			$Missions/UIQuests/ControlQ.toggle_quest(quests)
			$Missions.visible = true
		if $Inventory.visible == true:
			var inventory = get_parent().get_parent().get_player().inventory 
			$Inventory/UInventory/Control.toggle_inventory(inventory)
			$Inventory.visible = true
		$Inventory.visible = false
		$Map.visible = false
		if $Gloss.visible == true:
			var gloss = get_parent().get_parent().get_player().gloss
			$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
			$Gloss.visible = true
		$Gloss.visible = false
		$Last.visible = false
		return
	if $inv.pressed:
		if $Missions.visible == true:
			var quests = get_parent().get_parent().get_player().quests
			$Missions/UIQuests/ControlQ.toggle_quest(quests)
			$Missions.visible = true
		$Missions.visible = false
		if $Inventory.visible != true:
			var inventory = get_parent().get_parent().get_player().inventory 
			$Inventory/UInventory/Control.toggle_inventory(inventory)
			$Inventory.visible = true
		$Map.visible = false
		if $Gloss.visible == true:
			var gloss = get_parent().get_parent().get_player().gloss
			$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
			$Gloss.visible = true
		$Gloss.visible = false
		$Last.visible = false
		
		return
	if $map.pressed:
		if $Missions.visible == true:
			var quests = get_parent().get_parent().get_player().quests
			$Missions/UIQuests/ControlQ.toggle_quest(quests)
			$Missions.visible = true
		$Missions.visible = false
		if $Inventory.visible == true:
			var inventory = get_parent().get_parent().get_player().inventory 
			$Inventory/UInventory/Control.toggle_inventory(inventory)
			$Inventory.visible = true
		$Inventory.visible = false
		$Map.visible = true
		if $Gloss.visible == true:
			var gloss = get_parent().get_parent().get_player().gloss
			$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
			$Gloss.visible = true
		$Gloss.visible = false
		$Last.visible = false
		return
	if $glos.pressed:
		if $Missions.visible == true:
			var quests = get_parent().get_parent().get_player().quests
			$Missions/UIQuests/ControlQ.toggle_quest(quests)
			$Missions.visible = true
		$Missions.visible = false
		if $Inventory.visible == true:
			var inventory = get_parent().get_parent().get_player().inventory 
			$Inventory/UInventory/Control.toggle_inventory(inventory)
			$Inventory.visible = true
		$Inventory.visible = false
		$Map.visible = false
		if $Gloss.visible != true:
			var gloss = get_parent().get_parent().get_player().gloss
			$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
			$Gloss.visible = true
		$Last.visible = false
		return
	if $l.pressed:
		if $Missions.visible == true:
			var quests = get_parent().get_parent().get_player().quests
			$Missions/UIQuests/ControlQ.toggle_quest(quests)
			$Missions.visible = true
		$Missions.visible = false
		if $Inventory.visible == true:
			var inventory = get_parent().get_parent().get_player().inventory 
			$Inventory/UInventory/Control.toggle_inventory(inventory)
			$Inventory.visible = true
		$Inventory.visible = false
		$Map.visible = false
		if $Gloss.visible == true:
			var gloss = get_parent().get_parent().get_player().gloss
			$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
			$Gloss.visible = true
		$Gloss.visible = false
		$Last.visible = true
		return
	
