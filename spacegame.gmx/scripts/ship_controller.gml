tick++;
x = clamp(x, 60, 964);
y = clamp(y, 525, 700);

accel = clamp((710 - y) / 20, 6, 15);

background_vspeed[0] = accel/1.5;

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










