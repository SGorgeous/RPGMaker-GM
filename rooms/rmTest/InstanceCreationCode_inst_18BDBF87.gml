setEventID()
setTrigger(Trigger.playerTouch)

EVENT_BEGIN
	AWAIT evtRoomTransfer(rmInit,oPlayer.x,310,,ease_InOut) THEN
EVENT_END