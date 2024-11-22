//file_delete(SAVES_ADDR)
DataLoad(SAVES_ADDR)
	playerX = 160
	playerY =160
	currentRoom =  rmInit
DataInheritLoad(id,"__control__")
//////基础数据赋值
if variable_instance_exists(id,"InventoryMain"){
	global.inventoryMain = variable_clone(InventoryMain)
}
//////跳转房间
room_goto(currentRoom)
instance_create_layer(playerX,playerY,0,oPlayer)
instance_create_layer(playerX,playerY,0,oCamera)
instance_create_layer(playerX,playerY,0,oCoroutineManager)