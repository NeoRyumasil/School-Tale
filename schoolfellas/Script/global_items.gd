extends Node

#Barang
var haveTasHitam = false

#isCheckpoint
var isCheckpointParkiran = false
var isCheckpointLorongEntrance = false
var isCheckpointLorongR1 = false
var isCheckpointLorongR2 = false
var isCheckpointKelas = false

#Checkpoint
var checkpoint = Vector2.ZERO

func _setCheckpointPosition(position:Vector2):
	checkpoint = position
