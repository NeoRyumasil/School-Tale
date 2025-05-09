extends Node

# Day
var isDay1 = false
var isDay2 = false
var isDay3 = false
var isDay4 = false
var isDay5 = false

#Barang
var haveTasHitam = false
var haveSampah = false

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
