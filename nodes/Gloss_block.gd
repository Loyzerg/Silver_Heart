extends TextureRect

func set_gloss(name, inf):
	$RichTextLabel.text = inf
	$Label.text = name
func _input(event):
	name = $Label.text
	if ($Button.pressed == true):
		var im = load("res://sprites/glossimages/%s.png" % name)
		get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Image").set_texture(im)
