extends Node

var _swiftUI : Variant = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if _swiftUI == null && ClassDB.class_exists("SwiftGodotUI"):
		_swiftUI = ClassDB.instantiate("SwiftGodotUI")
	pass # Replace with function body.

func validate_plugin() -> bool:
	if _swiftUI == null: return false
	return true

func show_view():
	if validate_plugin() == false: return
	
	_swiftUI.openViewController()
