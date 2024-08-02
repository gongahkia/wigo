extends Node2D

# ----- REQUIRED IMPORTS -----

@onready var square_scene = preload("res://scene/square.tscn")
@onready var board_grid = $board/board_grid

var board_array := []

# Called when the node enters the scene tree for the first time.
func _ready():
	print("board is being instanitated")
	for i in range(64):
		create_square()
	var color_bit = 0
	for y in range(8):
		for x in range(8):
			if x % 2 == color_bit:
				board_array[y*8 + x].set_square_color(Color.DARK_SALMON)
		if color_bit == 0:
			color_bit = 1
		else:
			color_bit = 0
	print("board has been instantiated")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func create_square():
	var new_square = square_scene.instantiate()
	new_square.square_id = board_array.size()
	board_grid.add_child(new_square)
	board_array.push_back(new_square)
