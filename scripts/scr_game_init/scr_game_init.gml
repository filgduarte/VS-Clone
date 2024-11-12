function game_init(){
	global.camera = { width: 640, height: 360 };
    global.viewport = { width: 1280, height: 720 };
	global.delta = 0;
	global.room_total_time = 30;
    global.room_current_time = 0;
    /// @type Array<Array<Struct.SpawnInfo>>
	global.spawns = [];

    surface_resize(application_surface, global.viewport.width, global.viewport.height);
    room_goto(room_level_forest);
}