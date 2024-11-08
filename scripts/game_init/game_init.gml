function game_init(){
	global.camera = { width: 640, height: 360 };
    global.viewport = { width: 1280, height: 720 };
	global.room_total_time = 30;
    global.room_current_time = 0;
    /// @type {Array<Array<Struct.SpawnInfo>>}
	global.spawns = [];

    surface_resize(application_surface, global.viewport.width, global.viewport.height);
    room_goto(room_level_forest);
}

function SpawnInfo() constructor {
    /// @instancevar {Asset.Asset.GMObject} object
    /// @instancevar {Real} hp
    /// @instancevar {Real} move_speed
    /// @instancevar {Real} xp
    /// @instancevar {Real} damage
    /// @instancevar {Real} enemy_number
    /// @instancevar {Real} delay
    /// @instancevar {Real} delay_counter
}