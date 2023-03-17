extends Node2D



func _ready():
	pass 
#Добавление класса типа Player для взятия координат персонажа оттуда
var PlC = preload("res://nodes/PlayerCollision.gd")

var obj = PlC.new()


var esc_menue_bool = false
func _input(event):
	if (event.is_action_pressed("ui_cancel") or ($Interface/Button.pressed)):
		#Ввёл проверку на текущую камеру
		if(get_parent().get_node("CameraLoc").current == true):
			position.x = 0
			position.y = 0
			#Если локальная камера текущая, то все действия понятны, они те же, только позиция камеры становится дефолт
			if (esc_menue_bool == false) and (get_tree().paused == false):
				$Interface.visible = true
				get_tree().paused = true
				esc_menue_bool = true
				return
			if esc_menue_bool == true:
				$Interface.visible = false
				get_tree().paused = false
				esc_menue_bool = false
				return
		if(get_parent().get_node("Player").get_node("CameraPlayer").current == true):
			#get_node("Interface").position.x = get_parent().get_node("Player").get_node("PlayerCollision").global_position.x
			#get_node("Interface").position.y = get_parent().get_node("Player").get_node("PlayerCollision").global_position.y
			#С помощью родителей обратился к узлу с кругом взаимодейсвтия игрока и его координатам, отнял их
			#По сути сделал костыль, но, вроде работает, уже хорошо ёп. Можно как-нибудь подкорректировать позже
			position.x = get_parent().get_node("Player").get_node("PlayerCollision").global_position.x - 741
			position.y = get_parent().get_node("Player").get_node("PlayerCollision").global_position.y - 530
			if (esc_menue_bool == false) and (get_tree().paused == false):
				$Interface.visible = true
				get_tree().paused = true
				esc_menue_bool = true
				return
			if esc_menue_bool == true:
				$Interface.visible = false
				get_tree().paused = false
				esc_menue_bool = false
				return



func _physics_process(delta):
			if $Interface/Exit.pressed:
					get_tree().quit()
