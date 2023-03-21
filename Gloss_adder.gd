extends Node2D

func _ready():
	pass

#О пистолете
func about_gun():
		var a = 'Пистолет'
		var b = 'Эта пушка очень крутая я её нарисовал но плохо но это не важно вообще это текст ради примера'
		get_parent().get_player().get_gloss(a,b)
		var a1 = 'Тест1'
		var b1 = 'уппцппук4плохо но это не важно вообще это текст ради примера'
		get_parent().get_player().get_gloss_persons(a1,b1)
		var a2 = 'Тест2'
		var b2 = 'уппцппук4плохо но это не важно вообще это текст ради примера'
		get_parent().get_player().get_gloss_world(a2,b2)
