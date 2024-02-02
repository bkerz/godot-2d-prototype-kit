@tool
extends StaticBody2D
class_name Platform

enum Axis {
	Horizontal,
	Vertical
}
@export var direction: Axis
var _collision_shape: CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	_collision_shape = CollisionShape2D.new()
	var shape2d = RectangleShape2D.new()
	shape2d.size.x = 1080
	shape2d.size.y = 50
	_collision_shape.shape = shape2d
	add_child(_collision_shape)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Engine.is_editor_hint():
		if direction == Axis.Horizontal:
			_collision_shape.rotation = PI
		if direction == Axis.Vertical:
			_collision_shape.rotation = PI / 2
			
			
	if not Engine.is_editor_hint():
		pass
	pass
