extends Control


func toggle_quest(q):
	if $PanelQ.visible:
		$PanelQ.clear()
		$PanelQ.visible = false
	else:
		$PanelQ.visible = true
		$PanelQ.show_quest(q)

func update_quest(q):
	if $PanelQ.visible:
		$PanelQ.show_quest(q)

