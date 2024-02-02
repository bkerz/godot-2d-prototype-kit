@tool
extends EditorPlugin


func _enter_tree():
	# Initialization of the plugin goes here.
	# Add the new type with a name, a parent type, a script and an icon.
	add_custom_type("Platform", "StaticBody2D", preload("platform.gd"), preload("icon.svg"))
	add_custom_type("Obstacle", "StaticBody2D", preload("obstacle.gd"), preload("icon.svg"))
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass
