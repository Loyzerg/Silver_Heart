extends Sprite

func _ready():
	pass

func _input(event):
	var closebutton = get_parent().get_node("Button")
	var gloss = get_parent().get_parent().get_parent().get_player().gloss
	var gloss_persons = get_parent().get_parent().get_parent().get_player().gloss_persons
	var gloss_world = get_parent().get_parent().get_parent().get_player().gloss_world
	if $Tech.pressed and $UIgloss/ControlGloss/PanelGloss.visible == false:
		$UIgloss/ControlGloss.toggle_gloss(gloss)
		$UIgloss/ControlGloss/PanelGloss.visible = true
		$UIgloss/ControlGloss/PanelPersons.visible = false
		$UIgloss/ControlGloss/PanelWorld.visible = false
	if $Persons.pressed and $UIgloss/ControlGloss/PanelPersons.visible == false:
		$UIgloss/ControlGloss.toggle_gloss_persons(gloss_persons)
		$UIgloss/ControlGloss/PanelGloss.visible = false
		$UIgloss/ControlGloss/PanelPersons.visible = true
		$UIgloss/ControlGloss/PanelWorld.visible = false
	if $World.pressed and $UIgloss/ControlGloss/PanelWorld.visible == false:
		$UIgloss/ControlGloss.toggle_gloss_world(gloss_world)
		$UIgloss/ControlGloss/PanelGloss.visible = false
		$UIgloss/ControlGloss/PanelPersons.visible = false
		$UIgloss/ControlGloss/PanelWorld.visible = true	
	if (event.is_action_pressed("back_i_click") == true) or closebutton.pressed:
		$UIgloss/ControlGloss/PanelGloss.visible = false
		$UIgloss/ControlGloss/PanelPersons.visible = false
		$UIgloss/ControlGloss/PanelWorld.visible = false	
		#$Gloss/UIgloss/ControlGloss.toggle_gloss(gloss)
		#$Gloss.visible = true
