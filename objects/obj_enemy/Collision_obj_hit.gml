image_blend = c_red;
if (id_hit == other.id) {
	exit
}

var _knockback_speed = other.pushback_speed * knockback_multiplier;
var _crit_mult = other.critical_multiplier;
var _crit_range = other.critical_multiplier_range;
var _crit_range_diff = _crit_range.max - _crit_range.min;
var _text = instance_create_layer(x, y - 10, "Instances", obj_txt_damage);
var _text_scale_range_diff = _text.scale_range.max - _text.scale_range.min;
_text.scale = _text.scale_range.min + ((_crit_mult - _crit_range.min) / _crit_range_diff) * _text_scale_range_diff;
_text.depth = depth - 1;
_text.damage_amount = other.damage;

move_towards(x, y, _knockback_speed, other.x, other.y);
hp -= other.damage;
id_hit = other.id;