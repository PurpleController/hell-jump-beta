extends Node2D

@onready var Tutorial: Panel = $Tutorial
@onready var tutorialpc: Label = $Tutorial/Label
@onready var tutorialmobile: Label = $Tutorial/Label2

func _ready() -> void:
	Tutorial.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	Tutorial.visible = true
	if OS.get_name() == "Android":
		tutorialmobile.visible = true
		tutorialpc.visible = false
	if OS.get_name() == "Linux":
		tutorialmobile.visible = false
		tutorialpc.visible = true
	if OS.get_name() == "Windows":
		tutorialmobile.visible = false
		tutorialpc.visible = true
	get_tree().paused = true

func _on_ok_button_pressed() -> void:
	Tutorial.visible = false
	get_tree().paused = false
