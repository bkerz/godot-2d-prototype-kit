@tool
extends StaticBody2D

enum Axis {
	Horizontal,
	Vertical
}
## The direction the Platform will be align to
@export var direction: Axis
## The Size of the Shape2D in the CollisionShape2D of the Platform
@export var size: Vector2

var _collision_shape: CollisionShape2D 
var _shape2d: RectangleShape2D 


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_child_count() > 0:
		var child_to_remove = get_child(0)
		remove_child(child_to_remove)
		pass

	_collision_shape = CollisionShape2D.new()
	_shape2d = RectangleShape2D.new()
	_set_shape_size()
	_shape2d.size = size
	_collision_shape.shape =_shape2d
	add_child(_collision_shape)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if direction == Axis.Horizontal:
		_collision_shape.rotation = PI
		pass
	if direction == Axis.Vertical:
		_collision_shape.rotation = PI / 2
		pass
	pass
	_set_shape_size()
	pass

func _set_shape_size():
	if size.x < 1:
		_shape2d.size.x = 1080
	else:
		_shape2d.size.x = size.x
	if size.y < 1:
		_shape2d.size.y = 50
	else:
		_shape2d.size.y = size.y
		pass
