alpha = lerp(alpha, 0, 0.05);
y -= y_speed;

if (image_alpha <= 0) {
	instance_destroy();
}