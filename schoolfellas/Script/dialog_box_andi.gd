extends Control

var dialogIntro =["Oh.. Iya... Aku... Minta maaf telah merepotkanmu"
				]

var dialogIndex = 0
var isFinished = false

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
	if dialogIndex < dialogIntro.size():
		isFinished = false
		dialogText.bbcode_text = dialogIntro[dialogIndex]
		dialogText.visible_characters = 0 

		var tween = create_tween()
		tween.tween_property(dialogText, "visible_characters", dialogIntro[dialogIndex].length(), 1).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
		
	else:
		queue_free()
		isFinished = true
	dialogIndex += 1

	

		
