/// @description Values
    collected = false;
    ini_open(global.collectible_save);
    collected = ini_read_real(string(room_get_name(room)), string(number), false)
    ini_close();
