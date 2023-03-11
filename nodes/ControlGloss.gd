extends Control


func toggle_gloss(gloss):
	if $PanelGloss.visible:
		$PanelGloss.clear()
		$PanelGloss.visible = false
	else:
		$PanelGloss.visible = true
		$PanelGloss.show_gloss(gloss)

func update_gloss(gloss):
	if $PanelGloss.visible:
		$PanelGloss.show_gloss(gloss)
