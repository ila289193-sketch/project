extends Camera2D

@export var target_path: NodePath = "CharacterBody2D" #Путь к узлу игрока
@export var smoothing_speed: float = 3.0 # задержка движения камеры(сглаживание)
@export var camera_offset: Vector2 = Vector2(0, -50) #Смещение камеры относительно игрока

@export var map_limit_left: int = -10000
@export var map_limit_right: int = 10000
@export var map_limit_top: int = -100000
@export var map_limit_bottom: int = 100000

func _ready() -> void:
	#Включаем встроеное сглаживание годот
	position_smoothing_enabled = true
	position_smoothing_speed = smoothing_speed
	
	# Возвращаем стандартный зум (1.0)
	zoom = Vector2(1.0, 1.0)
	
	#Применяем лимиты карты
	limit_left = map_limit_left
	limit_right = map_limit_right
	limit_top = map_limit_top
	limit_bottom = map_limit_bottom
	
	#Делаем эту камеру активной
	make_current()
