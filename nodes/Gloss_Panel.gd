extends NinePatchRect

onready var Gloss_block = preload("res://nodes/Gloss_block.tscn") 
onready var cont = $ScrollContainer/GridContainer

func _ready():
	clear()
	visible = false

func clear():
	for i in cont.get_children():
		cont.remove_child(i)
		i.queue_free()
	
func show_gloss(gloss):
	clear()
	for i in gloss.keys(): 
		var new_gloss = Gloss_block.instance()
		cont.add_child(new_gloss)
		new_gloss.set_gloss(i, gloss[i]) 
	

