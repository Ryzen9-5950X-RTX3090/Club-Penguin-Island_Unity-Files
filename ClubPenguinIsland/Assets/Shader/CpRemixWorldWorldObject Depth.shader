Shader "CpRemix/World/WorldObject Depth" {
	Properties {
		_Diffuse ("Diffuse Texture", 2D) = "" {}
	}
	SubShader {
		Pass {
			Tags { "LIGHTMODE" = "FORWARDBASE" }
			GpuProgramID 62689
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _SurfaceTexTile;
						float _SurfaceMultiplier;
						float _SurfaceVelocityX;
						float _SurfaceVelocityZ;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 unused_1_1[8];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_4_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec2 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					bool u_xlatb5;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat12 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat12 = u_xlat12 / u_xlat1.x;
					    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat1.x = (-u_xlat12) + 1.0;
					    vs_TEXCOORD3.xyz = _DepthColor.xyz * vec3(u_xlat12) + u_xlat1.xxx;
					    u_xlat2.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat2.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat2.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat3.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat3.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat3.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat5.xyz = u_xlat2.xyz + u_xlat3.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat5.xyz = u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat12 = u_xlat12 * u_xlat5.y;
					    u_xlatb5 = 0.0<u_xlat12;
					    u_xlat12 = u_xlat12 * u_xlat12;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat12 = u_xlat12 * u_xlat5.x;
					    u_xlat4.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb5 = 0.0<u_xlat4.x;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat4.x = u_xlat4.x * u_xlat5.x;
					    u_xlat4.x = min(u_xlat4.x, 1.0);
					    u_xlat4.x = u_xlat4.x * u_xlat12;
					    u_xlat4.x = u_xlat1.x * u_xlat4.x;
					    u_xlat4.x = u_xlat4.x * _SurfaceMultiplier;
					    u_xlat4.x = u_xlat4.x * 0.5;
					    vs_TEXCOORD4.xyz = u_xlat4.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat4.xz = vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat4.xz = u_xlat4.xz * _Time.xx;
					    vs_TEXCOORD5.xy = u_xlat0.xz * vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) + (-u_xlat4.xz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_LINEAR" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _SurfaceTexTile;
						float _SurfaceMultiplier;
						float _SurfaceVelocityX;
						float _SurfaceVelocityZ;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 unused_1_1[4];
						vec4 _ProjectionParams;
						vec4 unused_1_3[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_4_0;
						vec4 unity_FogParams;
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD2;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec2 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					bool u_xlatb5;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat12 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat12 = u_xlat12 * _ProjectionParams.z;
					    u_xlat12 = max(u_xlat12, 0.0);
					    vs_TEXCOORD2 = u_xlat12 * unity_FogParams.z + unity_FogParams.w;
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat12 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat12 = u_xlat12 / u_xlat1.x;
					    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat1.x = (-u_xlat12) + 1.0;
					    vs_TEXCOORD3.xyz = _DepthColor.xyz * vec3(u_xlat12) + u_xlat1.xxx;
					    u_xlat2.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat2.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat2.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat3.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat3.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat3.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat5.xyz = u_xlat2.xyz + u_xlat3.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat5.xyz = u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat12 = u_xlat12 * u_xlat5.y;
					    u_xlatb5 = 0.0<u_xlat12;
					    u_xlat12 = u_xlat12 * u_xlat12;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat12 = u_xlat12 * u_xlat5.x;
					    u_xlat4.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb5 = 0.0<u_xlat4.x;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat4.x = u_xlat4.x * u_xlat5.x;
					    u_xlat4.x = min(u_xlat4.x, 1.0);
					    u_xlat4.x = u_xlat4.x * u_xlat12;
					    u_xlat4.x = u_xlat1.x * u_xlat4.x;
					    u_xlat4.x = u_xlat4.x * _SurfaceMultiplier;
					    u_xlat4.x = u_xlat4.x * 0.5;
					    vs_TEXCOORD4.xyz = u_xlat4.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat4.xz = vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat4.xz = u_xlat4.xz * _Time.xx;
					    vs_TEXCOORD5.xy = u_xlat0.xz * vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) + (-u_xlat4.xz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _SurfaceTexTile;
						float _SurfaceMultiplier;
						float _SurfaceVelocityX;
						float _SurfaceVelocityZ;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 unused_1_1[4];
						vec4 _ProjectionParams;
						vec4 unused_1_3[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_4_0;
						vec4 unity_FogParams;
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD2;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec2 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					bool u_xlatb5;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat12 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat12 = u_xlat12 * _ProjectionParams.z;
					    u_xlat12 = max(u_xlat12, 0.0);
					    u_xlat12 = u_xlat12 * unity_FogParams.y;
					    vs_TEXCOORD2 = exp2((-u_xlat12));
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat12 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat12 = u_xlat12 / u_xlat1.x;
					    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat1.x = (-u_xlat12) + 1.0;
					    vs_TEXCOORD3.xyz = _DepthColor.xyz * vec3(u_xlat12) + u_xlat1.xxx;
					    u_xlat2.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat2.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat2.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat3.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat3.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat3.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat5.xyz = u_xlat2.xyz + u_xlat3.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat5.xyz = u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat12 = u_xlat12 * u_xlat5.y;
					    u_xlatb5 = 0.0<u_xlat12;
					    u_xlat12 = u_xlat12 * u_xlat12;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat12 = u_xlat12 * u_xlat5.x;
					    u_xlat4.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb5 = 0.0<u_xlat4.x;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat4.x = u_xlat4.x * u_xlat5.x;
					    u_xlat4.x = min(u_xlat4.x, 1.0);
					    u_xlat4.x = u_xlat4.x * u_xlat12;
					    u_xlat4.x = u_xlat1.x * u_xlat4.x;
					    u_xlat4.x = u_xlat4.x * _SurfaceMultiplier;
					    u_xlat4.x = u_xlat4.x * 0.5;
					    vs_TEXCOORD4.xyz = u_xlat4.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat4.xz = vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat4.xz = u_xlat4.xz * _Time.xx;
					    vs_TEXCOORD5.xy = u_xlat0.xz * vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) + (-u_xlat4.xz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP2" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _SurfaceTexTile;
						float _SurfaceMultiplier;
						float _SurfaceVelocityX;
						float _SurfaceVelocityZ;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 unused_1_1[4];
						vec4 _ProjectionParams;
						vec4 unused_1_3[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_4_0;
						vec4 unity_FogParams;
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD2;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec2 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					bool u_xlatb5;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat12 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat12 = u_xlat12 * _ProjectionParams.z;
					    u_xlat12 = max(u_xlat12, 0.0);
					    u_xlat12 = u_xlat12 * unity_FogParams.x;
					    u_xlat12 = u_xlat12 * (-u_xlat12);
					    vs_TEXCOORD2 = exp2(u_xlat12);
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat12 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat12 = u_xlat12 / u_xlat1.x;
					    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
					    u_xlat12 = (-u_xlat12) + 1.0;
					    u_xlat1.x = (-u_xlat12) + 1.0;
					    vs_TEXCOORD3.xyz = _DepthColor.xyz * vec3(u_xlat12) + u_xlat1.xxx;
					    u_xlat2.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat2.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat2.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat3.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat3.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat3.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat5.xyz = u_xlat2.xyz + u_xlat3.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat5.xyz = u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat12 = u_xlat12 * u_xlat5.y;
					    u_xlatb5 = 0.0<u_xlat12;
					    u_xlat12 = u_xlat12 * u_xlat12;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat12 = u_xlat12 * u_xlat5.x;
					    u_xlat4.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb5 = 0.0<u_xlat4.x;
					    u_xlat5.x = u_xlatb5 ? 1.0 : float(0.0);
					    u_xlat4.x = u_xlat4.x * u_xlat5.x;
					    u_xlat4.x = min(u_xlat4.x, 1.0);
					    u_xlat4.x = u_xlat4.x * u_xlat12;
					    u_xlat4.x = u_xlat1.x * u_xlat4.x;
					    u_xlat4.x = u_xlat4.x * _SurfaceMultiplier;
					    u_xlat4.x = u_xlat4.x * 0.5;
					    vs_TEXCOORD4.xyz = u_xlat4.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat4.xz = vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat4.xz = u_xlat4.xz * _Time.xx;
					    vs_TEXCOORD5.xy = u_xlat0.xz * vec2(vec2(_SurfaceTexTile, _SurfaceTexTile)) + (-u_xlat4.xz);
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[5];
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec2 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD5.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD4.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_TEXCOORD3.xyz + u_xlat1.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_LINEAR" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[5];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec2 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD5.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD3.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[5];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec2 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD5.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD3.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP2" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[5];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec2 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD5.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD3.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
	}
}