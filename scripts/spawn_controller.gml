if(level == 1 ) {

   for(var i = 0; i < 7; i++) {
    
       spawn_meteor(i * 146 + 2 + random_range(0, 102), random(32) * (-1) - accel);
    }
}


if(level == 2 && fighters == 0) {
    
    for(var i = 0; i < 5; i++) {
    
        spawn_fighter(i * 146 + 2 + random_range(0, 102), random(32) * (-1) - accel);
    }
}

if(level == 3 && !boss) {
    boss = true;
    instance_create(512, 0, obj_boss);
}

