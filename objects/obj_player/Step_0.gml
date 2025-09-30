/// @description

/// get input
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);

/// calculate movements
hSpeed += (right - left) * walkSpeed;

// drag
hSpeed = lerp(hSpeed, 0, drag);

// stop

if (abs(hSpeed) <= 0.1) {
	hSpeed = 0;	
}

// face correct way

if (hSpeed != 0) {
	facing = sign(hSpeed);
}

// limit speed
hSpeed = min(abs(hSpeed), maxHSpeed) * facing;

/// apply movements
x += hSpeed;
y += vSpeed;

/// apply animations
image_xscale = facing;