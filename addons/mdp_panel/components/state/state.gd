tool
extends MarkovNode
class_name StateNode

signal is_initial_changed
signal is_terminal_changed

export(bool) var is_initial := false setget set_is_initial, get_is_initial
export(bool) var is_terminal := false setget set_is_terminal, get_is_terminal

func _ready() -> void:
	_init_slots()
	connect('is_initial_changed', self, '_init_slots')
	connect('is_terminal_changed', self, '_init_slots')

func get_is_initial() -> bool:
	return is_initial

func set_is_initial(value: bool) -> void:
	is_initial = value
	emit_signal('is_initial_changed', value)

func get_is_terminal() -> bool:
	return is_terminal

func set_is_terminal(value: bool) -> void:
	is_terminal = value
	emit_signal('is_terminal_changed', value)

func _init_slots() -> void:
	var input_type: int = SlotType.REWARD_TO_STATE
	var output_type: int = SlotType.STATE_TO_ACTION
	var input_color: Color = slot_colors.get(input_type)
	var output_color: Color = slot_colors.get(output_type)
	set_slot(0, !is_initial, input_type, input_color, !is_terminal, output_type, output_color)
