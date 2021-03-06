#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_ARB_shading_language_420pack : enable

layout(set = 0, binding = 1) uniform UboObject
{
	mat4 transform;
} object;

layout(location = 0) in vec2 inUv;
layout(location = 1) in vec3 inNormal;
layout(location = 2) in vec3 inTangent;

layout(location = 0) out vec4 outDiffuse;
layout(location = 1) out vec4 outNormal;
layout(location = 2) out vec4 outMaterial;

void main()
{
	outDiffuse = vec4(inTangent, 1.0f);
	outNormal = vec4(normalize(inNormal), 1.0f);
	outMaterial = vec4(0.0f, 1.0f, 0.0f, 1.0f);
}
