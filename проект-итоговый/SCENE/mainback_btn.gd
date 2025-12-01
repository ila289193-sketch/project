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
		# Устанавливаем минимальный размер кнопки равным размеру текста (плюс небольшой отступ для удобства)
		custom_minimum_size = text_size + Vector2(10, 0)
		# Применяем размер к кнопке
		size = custom_minimum_size
		# Центрируем кнопку относительно её предыдущего центра (опционально, но полезно чтобы текст не смещался визуально)
		# Но так как у нас фиксированные позиции в сцене, изменение размера может сдвинуть текст.
		# Label привязан к кнопке (anchors_preset=15), поэтому текст будет центрироваться в новом размере кнопки.


func _on_pressed() -> void:
   get_tree().change_scene_to_file("res://SCENE/main.tscn")
