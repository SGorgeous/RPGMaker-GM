setEventID()
setTrigger(Trigger.actionButton)
setChatterbox("test")
EVENT_BEGIN
evtPlayerFree()
		AWAIT evtDialog(EID,"[rainbow]已保存!") THEN
		//evtDialogYarnSetStart(EID,"SaveData");
		//evtDialogDefreeze(EID)
		DataSave(SAVES_ADDR)
		AWAIT evtDialogIsStopped(EID) THEN
evtPlayerFree()
EVENT_END