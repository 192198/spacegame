if(tick % 120 == 0) {
    posnum += 1;
}

if(y < 400) {
    y += 4;
}

if(posnum % 2 == 0) {
    hspeed = 2;
} else {
    hspeed = -2;
}



if(x > 1024) {
    instance_destroy();
}

if(x < 0) {
    instance_destroy();
}

if(level = 3){
    instance_destroy();
}
