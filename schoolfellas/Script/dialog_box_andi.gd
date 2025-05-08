extends Control

var dialogIndex = 0
var isFinished = false
var currentDialog : Array = []

@onready var dialogText: RichTextLabel = $Box/DialogText

func _ready() -> void:
	showDialog()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact"):
		dialogLoader()
		
func showDialog():
	dialogIndex = 0
	dialogLoader()

func dialogLoader():
	
	if GlobalItems.haveTasHitam && GlobalItems.isDay1:
		currentDialog = dialog.dialogKelasD1
	elif !GlobalItems.haveTasHitam && !GlobalItems.isDay1:
		currentDialog = ["Hello"]
	
	if dialogIndex < currentDialog.size() :
		isFinished = false
		dialogText.bbcode_text = currentDialog[dialogIndex]
		dialogText.visible_characters = 0 

		var tween = create_tween()
		tween.tween_property(dialogText, "visible_characters", currentDialog[dialogIndex].length(), 1).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
		
		if GlobalItems.isAndiTurns:
			dialogIndex += 1
			
	else:
		queue_free()
		isFinished = true
		
	

	

		
