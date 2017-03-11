tick++;
x = clamp(x, 60, 964);
y = clamp(y, 525, 700);

accel = clamp((710 - y) / 20, 8, 15);
distance += accel/60;

background_vspeed[0] = accel/1.5;

if(!disabled) {
    if keyboard_check(ord('W')) {
        y -= accel;
    }
    
    if keyboard_check(ord('A')) {
        x -= accel;
    }
    
    if keyboard_check(ord('S')) {
        y += accel;
    }
    
    if keyboard_check(ord('D')) {
        x += accel;
    }
    
    if keyboard_check(vk_f1) {
        distance = 0;
        global.life = 3;
    }
    
    if keyboard_check(vk_f2) {
        distance = 400;
        global.life = 3;
    }
    
    if keyboard_check(vk_f3) {
        distance = 800;
        global.life = 3;
    }
    
    if keyboard_check(vk_escape) {
        if (room != MainMenu) {
            room_goto(MainMenu)
        } else {
            game_end();
        }
    }
    
    if(distance < 400) {
        
        level = 1;
        background_index[0] = choose(bkgd_level_1);
    }
    
    if(distance >= 400) {
        
        level = 2;
        background_index[0] = choose(bkgd_level_2);
    }
    
    if(distance >= 800) {
        
        level = 3;
        background_index[0] = choose(bkgd_level_boss);
    }
}

if(level == 3) {
    y += 2;
    y = clamp(y, 700, 700);
    
}




