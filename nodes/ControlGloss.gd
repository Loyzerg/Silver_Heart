extends Control


func toggle_gloss(gloss):
	if $PanelGloss.visible:
		$PanelGloss.clear()
		$PanelGloss.visible = false
	else:
		$PanelGloss.visible = true
		$PanelGloss.show_gloss(gloss)
func toggle_gloss_persons(gloss):
	if $PanelPersons.visible:
		$PanelPersons.clear()
		$PanelPersons.visible = false
	else:
		$PanelPersons.visible = true
		$PanelPersons.show_gloss(gloss)
func toggle_gloss_world(gloss):
	if $PanelWorld.visible:
		$PanelWorld.clear()
		$PanelWorld.visible = false
	else:
		$PanelWorld.visible = true
		$PanelWorld.show_gloss(gloss)
		
func update_gloss(gloss):
	if $PanelGloss.visible:
		$PanelGloss.show_gloss(gloss)
func update_gloss_persons(gloss):
	if $PanelPersons.visible:
		$PanelPersons.show_gloss(gloss)
func update_gloss_world(gloss):
	if $PanelWorld.visible:
		$PanelWorld.show_gloss(gloss)
