extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	var grassEffect = GrassEffect.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position
#	grassEffect.global_position = global_position
#	get_tree().current_scene.add_child(grassEffect)

func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
