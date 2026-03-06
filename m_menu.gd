extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
@onready var bstart = $"Button Manager/START"
@onready var blevel = $"Button Manager/LEVEL"
@onready var boptions = $"Button Manager/OPTIONS"
@onready var bquit = $"Button Manager/QUIT"
@onready var bvolume = $"Button Manager/VOLUME"
@onready var binfo = $"Button Manager/INFO"
@onready var btitle = $WORM2
@onready var btitle1 = $WORM


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")

func _on_level_pressed() -> void:
	for node in get_tree().get_nodes_in_group("mmenu_buttons"):
		node.visible = false 
	for node in get_tree().get_nodes_in_group("Level_buttons"):
		node.visible = true 
	
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://options.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_info_pressed() -> void:
	for node in get_tree().get_nodes_in_group("mmenu_buttons"):
		node.visible = false 
	for node in get_tree().get_nodes_in_group("info_buttons"):
		node.visible = true 
	



func _on_back_pressed() -> void:
	for node in get_tree().get_nodes_in_group("mmenu_buttons"):
		node.visible = true
	for node in get_tree().get_nodes_in_group("info_buttons"):
		node.visible = false 
	for node in get_tree().get_nodes_in_group("Level_buttons"):
		node.visible = false
	
	
