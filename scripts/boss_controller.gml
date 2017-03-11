if(y < 216) {
    disabled = true;
    npc_off = true;
    y += .4;
} else {
    npc_off = false;
    disabled = false;
}

if(tick % 120 == 0 && !disabled) {
    image_angle = ((obj_spaceship.x - 512.0)*(45.0/512.0));
    alarm[0] = 60;
} 

if (hp <= 0){
    instance_create(x,y,obj_boss_hurt);
    instance_destroy();
    global.points = global.points +100;
}

