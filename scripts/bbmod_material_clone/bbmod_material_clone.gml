/// @func bbmod_material_clone(material)
/// @desc Creates a copy of a Material structure.
/// @param {array} material The Material structure to create a copy of.
/// @return {array} The created Material structure.
gml_pragma("forceinline");
var _material = array_create(BBMOD_EMaterial.SIZE, 0);
array_copy(_material, 0, argument0, 0, BBMOD_EMaterial.SIZE);
return _material;