extends Node
@export var node_finite_state_machine : NodeFininiteStateMachine



func _on_area_2d_body_entered(body : Node2D):
	if body.is_in_group("Player"):
		node_finite_state_machine.transition_to("attack")

func _on_area_2d_body_exited(body : Node2D):
	if body.is_in_group("Player"):
		node_finite_state_machine.transition_to("idle")
