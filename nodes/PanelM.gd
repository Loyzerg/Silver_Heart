extends NinePatchRect

onready var Block_mission = preload("res://nodes/Block_mission.tscn") 
onready var cont = $Scroll/Grid

func _ready():
	clear()
	visible = false

func clear():
	for i in cont.get_children():
		cont.remove_child(i)
		i.queue_free()
	
func show_mission(quests, name):
	clear()
	for i in quests[name].keys(): 
		var new_miss = Block_mission.instance()
		cont.add_child(new_miss)
		new_miss.set_mission(i,quests[name][i])
		
