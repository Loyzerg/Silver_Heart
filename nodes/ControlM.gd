extends Control


func toggle_mission(name):
	var quest = get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_player().quests
	if $PanelM.visible:
		$PanelM.clear()
		$PanelM.visible = false
	else:
		$PanelM.visible = true
		$PanelM.show_mission(quest,name)

func update_mission(name):
	var quest = get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_player().quests
	if $PanelM.visible:
		$PanelM.show_mission(quest, name)
