Shader "CpRemix/World/Unlit Dynamic Object Depth" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_DepthMultiply ("DepthMultiply", Range(0, 1)) = 1
	}
	SubShader {
		Tags { "RenderType" = "Opaque" }
		Pass {
			Tags { "RenderType" = "Opaque" }
			GpuProgramID 52985
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
						vec4 _MainTex_ST;
						float _DepthMultiply;
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _DynSurfaceTexTile;
						float _DynSurfaceMultiplier;
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
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD4;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec4 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat9;
					bool u_xlatb9;
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
					    u_xlat1.xy = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    vs_TEXCOORD4.xy = u_xlat0.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat1.xy);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0.x = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat3 = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlat6 = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat0.x = u_xlat0.x / u_xlat6;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat6 = u_xlat0.x * _DepthMultiply;
					    u_xlat0.x = (-u_xlat0.x) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * vec3(u_xlat6) + u_xlat0.xxx;
					    u_xlatb6 = 0.0<u_xlat3;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3 = u_xlat6 * u_xlat3;
					    u_xlat3 = min(u_xlat3, 1.0);
					    u_xlat1.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat1.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat1.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat2.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat2.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat2.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    u_xlat6 = u_xlat6 * u_xlat1.y;
					    u_xlatb9 = 0.0<u_xlat6;
					    u_xlat6 = u_xlat6 * u_xlat6;
					    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
					    u_xlat6 = u_xlat9 * u_xlat6;
					    u_xlat3 = u_xlat3 * u_xlat6;
					    u_xlat0.x = u_xlat0.x * u_xlat3;
					    u_xlat0.x = u_xlat0.x * _DynSurfaceMultiplier;
					    u_xlat0.x = u_xlat0.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat0.xxx * _SurfaceReflectionColor.xyz;
					    vs_COLOR0 = in_COLOR0;
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
						vec4 _MainTex_ST;
						float _DepthMultiply;
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _DynSurfaceTexTile;
						float _DynSurfaceMultiplier;
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
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out float vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD4;
					out vec4 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat9;
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
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD1 = u_xlat9 * unity_FogParams.z + unity_FogParams.w;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat9 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat9 = u_xlat9 / u_xlat1.x;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat1.x = u_xlat9 * _DepthMultiply;
					    u_xlat9 = (-u_xlat9) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * u_xlat1.xxx + vec3(u_xlat9);
					    u_xlat1.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat1.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat1.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat2.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat2.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat2.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat1.x = inversesqrt(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat1.y;
					    u_xlatb4 = 0.0<u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat1.x = u_xlat4 * u_xlat1.x;
					    u_xlat3.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb4 = 0.0<u_xlat3.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat3.x * u_xlat4;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat3.x = u_xlat3.x * u_xlat1.x;
					    u_xlat3.x = u_xlat9 * u_xlat3.x;
					    u_xlat3.x = u_xlat3.x * _DynSurfaceMultiplier;
					    u_xlat3.x = u_xlat3.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat3.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat3.xz = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat3.xz = u_xlat3.xz * _Time.xx;
					    vs_TEXCOORD4.xy = u_xlat0.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat3.xz);
					    vs_COLOR0 = in_COLOR0;
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
						vec4 _MainTex_ST;
						float _DepthMultiply;
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _DynSurfaceTexTile;
						float _DynSurfaceMultiplier;
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
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out float vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD4;
					out vec4 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat9;
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
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    u_xlat9 = u_xlat9 * unity_FogParams.y;
					    vs_TEXCOORD1 = exp2((-u_xlat9));
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat9 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat9 = u_xlat9 / u_xlat1.x;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat1.x = u_xlat9 * _DepthMultiply;
					    u_xlat9 = (-u_xlat9) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * u_xlat1.xxx + vec3(u_xlat9);
					    u_xlat1.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat1.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat1.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat2.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat2.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat2.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat1.x = inversesqrt(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat1.y;
					    u_xlatb4 = 0.0<u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat1.x = u_xlat4 * u_xlat1.x;
					    u_xlat3.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb4 = 0.0<u_xlat3.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat3.x * u_xlat4;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat3.x = u_xlat3.x * u_xlat1.x;
					    u_xlat3.x = u_xlat9 * u_xlat3.x;
					    u_xlat3.x = u_xlat3.x * _DynSurfaceMultiplier;
					    u_xlat3.x = u_xlat3.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat3.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat3.xz = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat3.xz = u_xlat3.xz * _Time.xx;
					    vs_TEXCOORD4.xy = u_xlat0.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat3.xz);
					    vs_COLOR0 = in_COLOR0;
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
						vec4 _MainTex_ST;
						float _DepthMultiply;
						float _SurfaceYCoord;
						float _DeepestYCoord;
						vec3 _DepthColor;
						vec3 _SurfaceReflectionColor;
						float _DynSurfaceTexTile;
						float _DynSurfaceMultiplier;
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
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_NORMAL0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out float vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD4;
					out vec4 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat9;
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
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    u_xlat9 = u_xlat9 * unity_FogParams.x;
					    u_xlat9 = u_xlat9 * (-u_xlat9);
					    vs_TEXCOORD1 = exp2(u_xlat9);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat9 = u_xlat0.y + (-_DeepestYCoord);
					    u_xlat1.x = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat9 = u_xlat9 / u_xlat1.x;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat1.x = u_xlat9 * _DepthMultiply;
					    u_xlat9 = (-u_xlat9) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * u_xlat1.xxx + vec3(u_xlat9);
					    u_xlat1.x = in_NORMAL0.x * unity_WorldToObject[0].x;
					    u_xlat1.y = in_NORMAL0.x * unity_WorldToObject[1].x;
					    u_xlat1.z = in_NORMAL0.x * unity_WorldToObject[2].x;
					    u_xlat2.x = in_NORMAL0.y * unity_WorldToObject[0].y;
					    u_xlat2.y = in_NORMAL0.y * unity_WorldToObject[1].y;
					    u_xlat2.z = in_NORMAL0.y * unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat2.x = in_NORMAL0.z * unity_WorldToObject[0].z;
					    u_xlat2.y = in_NORMAL0.z * unity_WorldToObject[1].z;
					    u_xlat2.z = in_NORMAL0.z * unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
					    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat1.x = inversesqrt(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat1.y;
					    u_xlatb4 = 0.0<u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat1.x = u_xlat4 * u_xlat1.x;
					    u_xlat3.x = (-u_xlat0.y) + _SurfaceYCoord;
					    u_xlatb4 = 0.0<u_xlat3.x;
					    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat3.x * u_xlat4;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat3.x = u_xlat3.x * u_xlat1.x;
					    u_xlat3.x = u_xlat9 * u_xlat3.x;
					    u_xlat3.x = u_xlat3.x * _DynSurfaceMultiplier;
					    u_xlat3.x = u_xlat3.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat3.xxx * _SurfaceReflectionColor.xyz;
					    u_xlat3.xz = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat3.xz = u_xlat3.xz * _Time.xx;
					    vs_TEXCOORD4.xy = u_xlat0.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat3.xz);
					    vs_COLOR0 = in_COLOR0;
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
					
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec4 vs_COLOR0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
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
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_0_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					in  vec2 vs_TEXCOORD0;
					in  float vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD4;
					in  vec4 vs_COLOR0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD1;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
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
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_0_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					in  vec2 vs_TEXCOORD0;
					in  float vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD4;
					in  vec4 vs_COLOR0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD1;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
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
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_0_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					in  vec2 vs_TEXCOORD0;
					in  float vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD4;
					in  vec4 vs_COLOR0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD1;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
	}
}