tool
extends EditorPlugin

var panel: Control
var panel_label: String = 'MDP'

func _enter_tree() -> void:
	panel = preload('res://addons/mdp_panel/graph_edit.tscn').instance()
	add_control_to_bottom_panel(panel, panel_label)

func _exit_tree() -> void:
	remove_control_from_bottom_panel(panel)
	panel.free()
