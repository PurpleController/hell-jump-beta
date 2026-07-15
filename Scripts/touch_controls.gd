extends CanvasLayer

@onready var right: TouchScreenButton = $Right
@onready var left: TouchScreenButton = $Left
@onready var jump: TouchScreenButton = $Jump
@onready var dash: TouchScreenButton = $Dash

func _ready() -> void:
	if OS.get_name() == "Android":
		right.visible = true
	if OS.get_name() == "Android":
		left.visible = true
	if OS.get_name() == "Android":
		jump.visible = true
	if OS.get_name() == "Android":
		dash.visible = true
	if OS.get_name() == "Linux":
		right.visible = false
	if OS.get_name() == "Linux":
		left.visible = false
	if OS.get_name() == "Linux":
		jump.visible = false
	if OS.get_name() == "Linux":
		dash.visible = false
	if OS.get_name() == "Windows":
		right.visible = false
	if OS.get_name() == "Windows":
		left.visible = false
	if OS.get_name() == "Windows":
		jump.visible = false
	if OS.get_name() == "Windows":
		dash.visible = false


func _on_right_pressed() -> void:
	right.modulate.a = 0.5


func _on_right_released() -> void:
	right.modulate.a = 1.0


func _on_left_pressed() -> void:
	left.modulate.a = 0.5


func _on_left_released() -> void:
	left.modulate.a = 1.0


func _on_jump_pressed() -> void:
	jump.modulate.a = 0.5


func _on_jump_released() -> void:
	jump.modulate.a = 1.0


func _on_dash_pressed() -> void:
	dash.modulate.a = 0.5


func _on_dash_released() -> void:
	dash.modulate.a = 1.0
