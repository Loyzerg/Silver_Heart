extends Node2D

func _ready():
	pass

func about_gun():
		var a = 'Пистолет'
		var b = 'Эта пушка очень крутая я её нарисовал но плохо но это не важно вообще это текст ради примера'
		get_parent().get_player().get_gloss(a,b)
