extends Area2D

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _on_NPC_body_entered(body):
	if body.name == "Player":
		get_parent().get_parent().get_node("Player").get_node("CameraPlayer").clear_current()
		get_parent().get_parent().get_node("CameraLoc").current = true
func _on_NPC_body_exited(body):
	if body.name == "Player":
		get_parent().get_parent().get_node("CameraLoc").clear_current()
		get_parent().get_parent().get_node("Player").get_node("CameraPlayer").current = true
