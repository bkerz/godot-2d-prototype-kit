@tool
extends StaticBody2D
class_name Obstacle

var _collision_shape: CollisionShape2D

func _ready():
	_collision_shape = CollisionShape2D.new()
	var shape2d = RectangleShape2D.new()
	shape2d.size.x = 100
	shape2d.size.y = 100
	_collision_shape.shape = shape2d
	add_child(_collision_shape)
	pass # Replace with function body.
	
