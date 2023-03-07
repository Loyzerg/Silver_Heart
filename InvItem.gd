extends TextureRect

func set_item(item_name, amount):
	texture = load("res://sprites/items/%s.png" % item_name)
	$Amount.text = str(amount)
	$Label.text = str(item_name)
