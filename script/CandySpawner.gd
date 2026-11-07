
extends Node2D

@export var candy_scene: PackedScene
@export var candy_scene_2: PackedScene

var use_second_candy = false

func _ready():
	randomize()
	spawn_candy()

func spawn_candy():
	var candy_scene_to_spawn = candy_scene

	if use_second_candy:
		candy_scene_to_spawn = candy_scene_2

	var candy = candy_scene_to_spawn.instantiate()
	add_child(candy)

	candy.position = Vector2(
		randf_range(50, 1100),
		-50
	)

	use_second_candy = !use_second_candy

	await get_tree().create_timer(1.5).timeout
	spawn_candy()
