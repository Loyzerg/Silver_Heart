extends KinematicBody2D

const ACCELERATION = 500
const MAX_SPEED = 200
const AIR_RESISTENCE = 0.05

var motion = Vector2.ZERO
var idle = "idle_front"

func _physics_process(delta):
	#обработка события нажатия клавишь
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var y_input = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	if x_input != 0:
		motion.x += x_input * ACCELERATION * delta
		motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)
	if y_input != 0:
		motion.y += y_input * ACCELERATION * delta
		motion.y = clamp(motion.y, -MAX_SPEED, MAX_SPEED)
	motion = move_and_slide(motion, Vector2.UP)
	#остановка со временем
	motion.x = lerp(motion.x, 0, AIR_RESISTENCE)
	motion.y = lerp(motion.y, 0, AIR_RESISTENCE)
	if x_input == 0 and y_input == 0:
		motion.x = 0
		motion.y = 0

	#анимация
	var anim = "idle_front" 	
	if x_input > 0:
		anim = "walk_right"
		idle = "idle_right"
	if x_input < 0:
		anim = "walk_left"
		idle = "idle_left"
	if y_input > 0:
		anim = "walk_front"
		idle = "idle_front"
	if y_input < 0:
		anim = "walk_back"
		idle = "idle_back"
	if ((x_input == 0 ) and (y_input == 0 )):
			anim=idle
	if $Hort.animation != anim:
		$Hort.play(anim)
		
	
