#pragma once

/** The version of created BBMOD files. */
#define BBMOD_VERSION 1

/** A code returned on fail, when none of BBMOD_ERR_ is applicable. */
#define BBMOD_FAILURE -1

/** A code returned when a model is successfully converted. */
#define BBMOD_SUCCESS 0

/** An error code returned when model loading fails. */
#define BBMOD_ERR_LOAD_FAILED 1

/** An error code returned when model conversion fails. */
#define BBMOD_ERR_CONVERSION_FAILED 2

/** An error code returned when converted model is not saved. */
#define BBMOD_ERR_SAVE_FAILED 3

/** Configuration structure. */
struct BBMODConfig
{
	/** Convert data to left-handed. */
	bool leftHanded = false;

	/** Invert vertex winding order. */
	bool invertWinding = false;

	/** Disable saving vertex normals. This also automatically disable
	 * tangent vector and bitangent sign. */
	bool disableNormals = false;

	/** Disable saving texture coordinates. */
	bool disableTextureCoords = false;

	/** Disable saving vertex colors. */
	bool disableVertexColors = false;

	/** Disable saving tangent vector and bitangent sign. */
	bool disableTangentW = false;

	/** Disable saving bones and animations. */
	bool disableBones = false;
};

/** Converts a model from file fin to BBMOD and saves it to fout. */
int ConvertToBBMOD(const char* fin, const char* fout, const BBMODConfig& config);