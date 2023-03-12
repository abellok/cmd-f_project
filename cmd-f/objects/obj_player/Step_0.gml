// class that is active every frame of the game

// represents when keys on keyboard are pressed
right_key = keyboard_check(vk_right); 
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// finds direction and applies move_spd
xspd = right_key - left_key * move_spd; 
yspd = down_key - up_key * move_spd;

// collisions
// wall
if place_meeting(x + xspd, y, obj_wall) == true {
	xspd = 0; 
}
if place_meeting(x, y + yspd, obj_wall) == true {
	yspd = 0;
}
// desk
if place_meeting(x + xspd, y, obj_desk) == true {
	xspd = 0; 
}
if place_meeting(x, y + yspd, obj_desk) == true {
	yspd = 0;
}
// teacher
if place_meeting(x + xspd, y, obj_teacher) == true {
	xspd = 0; 
}
if place_meeting(x, y + yspd, obj_teacher) == true {
	yspd = 0;
}
//student
if place_meeting(x + xspd, y, obj_student1) == true {
	xspd = 0; 
}
if place_meeting(x, y + yspd, obj_student1) == true {
	yspd = 0;
}




// calculates next position on screen
x += xspd;	
y += yspd;

// set correct sprite with movement direction
mask_index = sprite[3];

if (yspd == 0) {
	if (xspd > 0) {face = RIGHT};
	if (xspd < 0) {face = LEFT};
}
if (xspd == 0) {
	if (yspd > 0) {face = DOWN};
	if (yspd < 0) {face = UP};
}
sprite_index = sprite[face];

// only animate when moving
if (yspd == 0 && xspd == 0) {
	image_index = 0;
}

