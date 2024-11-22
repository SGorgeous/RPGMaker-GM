chatterBox.draw()
/*
if ( inventoryMainDisplay){
	for(var _i = 0;_i < global.inventoryMain.inventorySize ;_i++){
		//if(_i >= array_length(global.inventoryMain.inventoryArr)){
		//	break;
		//}
		
		var _item = array_get(global.inventoryMain.inventoryArr,_i);
		
		var _name = "name";
		var _count = 0;
		if !array_equals(_item,[]){
			_name = _item[0].name ?? "name";
			_count =  _item[1] ?? 0;
		}

		scribble($"[shadow][c_red]{_name}:{_count}")
		.draw(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+_i * font_get_size(fntDefault))
	}
}
	/*
for(var _d = array_length(info) - 1;_d >= 0;_d--){
	scribble($"[c_red]{info[_d]}")
		.draw(camera_get_view_x(view_camera[0])
		,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+_d* font_get_size(fntDefault))

}