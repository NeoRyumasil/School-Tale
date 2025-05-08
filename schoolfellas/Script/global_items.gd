extends Node

# Day
var isDay1 = false
var isDay2 = false
var isDay3 = false
var isDay4 = false
var isDay5 = false

# Turns
var isRakaTurns = false
var isHeriTurns = false
var isGunturTurns = false
var isAndiTurns = false
var isNellyTurns = false
var isEdiTurns = false

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

var isParkiran = false

func _setCheckpointPosition(position:Vector2):
	checkpoint = position

# Status
var reputation = 0

# SceneTrigger
var Day1SceneTriggerKelas = false

# MissionTrigger
var NellyMission = false
