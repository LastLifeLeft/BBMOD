/// @func bbmod_init_global()
/// @desc Global initialization script for the BBMOD library.
/// @note This script is executed automatically upon game start. Do not call it
/// manually!
gml_pragma("global", "bbmod_init_global()");

/// @var {real} Mapping of vertex format masks to existing vertex formats.
global.__bbmod_vertex_formats = ds_map_create();

/// @var {real} The default material.
global.__bbmod_material_default = bbmod_material_create(BBMOD_ShDefault);

/// @var {real} The default material for animated models.
global.__bbmod_material_default_animated = bbmod_material_create(BBMOD_ShDefaultAnimated);

/// @var {array/undefined} The currently applied material.
global.__bbmod_material_current = undefined;

/// @var {real} A stack used when posing skeletons to avoid recursion.
global.__bbmod_anim_stack = ds_stack_create();

/// @var {real} An index of the last found AnimationKey.
global.__bbmod_key_index_last = 0;

/// @var {real} The current render pass.
global.bbmod_render_pass = BBMOD_RENDER_FORWARD;