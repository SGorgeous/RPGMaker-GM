setEventID(12138)
setTrigger(Trigger.playerTouch)
setChatterbox("test")
EVENT_BEGIN
IF selfSwitch == 0 THEN
	evtPlayerFree()
	evtDialogYarnSetStart(EID,"Move");
	evtDialogDefreeze(EID)
	evtDialogEventControl(EID,1)
	AWAIT evtDialogTypistState(EID) THEN 
	WHILE oPlayer.image_angle < 360 THEN
	oPlayer.image_angle += 5
	YIELD THEN 
	END
	oPlayer.image_angle =0
	evtDialogContinue(EID)
	AWAIT AutoMoveMatrixTo(oPlayer,120,120,2,1) THEN
	DELAY 600 THEN
	evtSpriteDirection(oPlayer,Dir.West)
	DELAY 600 THEN
	evtSpriteDirection(oPlayer,Dir.East)
	DELAY 600 THEN
	evtSpriteDirection(oPlayer,Dir.North)
	DELAY 1000 THEN
	evtDialogContinue(EID)
	AWAIT AutoMoveMatrixTo(oPlayer,240,110,2,1) THEN
	evtDialogContinue(EID)
	AWAIT AutoMoveMatrixTo(oPlayer,120,190,2,1) THEN
	evtDialogContinue(EID)
	DELAY 1000 THEN
	evtDialogContinue(EID)
	evtDialogEventControl(0)
	AWAIT evtDialogIsStopped(EID) THEN
	evtPlayerFree()
	selfSwitch+=1
END
EVENT_END