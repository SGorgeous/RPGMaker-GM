setEventID()
setTrigger(Trigger.playerTouch)

EVENT_BEGIN
	AWAIT evtRoomTransfer(rmTest,oPlayer.x,80,,ease_InOut) THEN
EVENT_END