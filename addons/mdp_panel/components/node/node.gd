tool
extends GraphNode
class_name MarkovNode

enum SlotType {
	STATE_TO_ACTION = 1,
	ACTION_TO_REWARD = 2,
	REWARD_TO_STATE = 3,
}

var slot_colors: Dictionary = {
	SlotType.STATE_TO_ACTION: Color.purple,
	SlotType.ACTION_TO_REWARD: Color.cyan,
	SlotType.REWARD_TO_STATE: Color.orange
}

func _on_resize_request(new_minsize: Vector2) -> void:
	self.rect_size = new_minsize
