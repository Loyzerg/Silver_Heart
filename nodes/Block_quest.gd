extends TextureRect

func set_quest(name):
	$Label.text = name
	print("Get %s "% str(name))
	#var mission = get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_player().quests[name]
	$ControlM.toggle_mission(name)
	
