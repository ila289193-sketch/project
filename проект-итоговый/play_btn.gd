extends Button


# Вызывается при готовности узла
func _ready():
	# Находим дочерний узел Label
	var label = $Label
	# Если Label существует
	if label:
		# Получаем шрифт из Label
		var font = label.get_theme_font("font")
		# Получаем размер шрифта из Label
		var font_size = label.get_theme_font_size("font_size")
		# Вычисляем размер текста в пикселях
		var text_size = font.get_string_size(label.text, HORIZONTAL_ALIGNMENT_CENTER, -1, font_size)
		# Устанавливаем минимальный размер кнопки равным размеру текста
		custom_minimum_size = text_size
		# Применяем размер к кнопке
		size = custom_minimum_size


func _on_pressed():
	get_tree().change_scene_to_file("res://SCENE/scene001.tscn")
	


func _on_settings_btn_pressed():
	get_tree().change_scene_to_file("res://SCENE/settings.tscn")
  


func _on_quit_btn_pressed():
	get_tree().quit()
   
