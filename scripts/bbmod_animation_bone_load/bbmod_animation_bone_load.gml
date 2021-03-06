/// @func bbmod_animation_bone_load(buffer)
/// @desc Loads an AnimationBone structure from a buffer.
/// @param {real} buffer The buffer to load the structure from.
/// @return {array} The loaded structure.
var _buffer = argument0;

var _animation_bone = array_create(BBMOD_EAnimationBone.SIZE, 0);
_animation_bone[@ BBMOD_EAnimationBone.BoneIndex] = buffer_read(_buffer, buffer_f32);

// Load position keys
var _position_key_count = buffer_read(_buffer, buffer_u32);
var _position_keys = array_create(_position_key_count, 0);
_animation_bone[@ BBMOD_EAnimationBone.PositionKeys] = _position_keys;

for (var i/*:int*/= 0; i < _position_key_count; ++i)
{
	var _key = bbmod_position_key_load(_buffer);
	_position_keys[@ i] = _key;
}

// Load rotation keys
var _rotation_key_count = buffer_read(_buffer, buffer_u32);
var _rotation_keys = array_create(_rotation_key_count, 0);
_animation_bone[@ BBMOD_EAnimationBone.RotationKeys] = _rotation_keys;

for (var i/*:int*/= 0; i < _rotation_key_count; ++i)
{
	var _key = bbmod_rotation_key_load(_buffer);
	_rotation_keys[@ i] = _key;
}

return _animation_bone;