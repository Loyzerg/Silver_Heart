extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _input(event):
	if (event.is_action_pressed("e_click") and active):
		get_parent().get_parent().get_node("Player").global_position.x = 2000
		get_parent().get_parent().get_node("Player").global_position.y = 300


func _on_NPC_body_entered(body):
	if body.name == "Player":
		active = true
func _on_NPC_body_exited(body):
	if body.name == "Player":
		active = false
