tool
extends MarkovNode
class_name ActionNode

func _ready() -> void:
	_init_slots()

func _init_slots() -> void:
	var input_type: int = SlotType.STATE_TO_ACTION
	var output_type: int = SlotType.ACTION_TO_REWARD
	var input_color: Color = slot_colors.get(input_type)
	var output_color: Color = slot_colors.get(output_type)
	set_slot(0, true, input_type, input_color, true, output_type, output_color)
