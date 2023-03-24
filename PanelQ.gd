extends NinePatchRect

onready var Block_quest = preload("res://nodes/Block_quest.tscn") 
onready var cont = $Scroll/Grid

func _ready():
	clear()
	visible = false

func clear():
	for i in cont.get_children():
		cont.remove_child(i)
		i.queue_free()
	
func show_quest(quests):
	clear()
	for i in quests.keys(): 
		var new_quest = Block_quest.instance()
		cont.add_child(new_quest)
		new_quest.set_quest(i)
		
	
