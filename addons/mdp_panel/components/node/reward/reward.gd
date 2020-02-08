tool
extends MarkovNode
class_name RewardNode

signal reward_changed

export(float) var reward: float = 0 setget set_reward, get_reward

func _ready() -> void:
	_init_slots()
	_set_label(reward)
	connect('reward_changed', self, '_set_label')

func _init_slots() -> void:
	var input_type: int = SlotType.ACTION_TO_REWARD
	var output_type: int = SlotType.REWARD_TO_STATE
	var input_color: Color = slot_colors.get(input_type)
	var output_color: Color = slot_colors.get(output_type)
	set_slot(0, true, input_type, input_color, true, output_type, output_color)

func get_reward() -> float:
	return reward

func set_reward(value: float) -> void:
	reward = value
	emit_signal('reward_changed', value)

func _set_label(new_value: float) -> void:
	$Slot.text = str(new_value)
