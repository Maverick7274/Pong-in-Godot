extends Node

var PlayerScore = 0
var OpponentScore = -1

func score_achieved():
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	$CountdownTimer.start()
	$ScoreSound.play()
	$TimerDisplay.visible = true
	$Player.position.x = 75
	$Opponent.position.x = 1280 - 75


# warning-ignore:unused_argument
func _on_Left_body_entered(body):
	score_achieved()
	OpponentScore += 1
	
	
	
# warning-ignore:unused_argument
func _on_Right_body_entered(body):
	score_achieved()
	PlayerScore += 1
	
# warning-ignore:unused_argument
func _process(delta):
	$PlayerScore.text = "Player Score\n" + str(PlayerScore)
	$OpponentScore.text = "CPU Score\n" +  str(OpponentScore)
	$TimerDisplay.text = str(int($CountdownTimer.time_left))


func _on_CountdownTimer_timeout():
	get_tree().call_group('BallGroup', 'restart_ball')
	$TimerDisplay.visible = false
