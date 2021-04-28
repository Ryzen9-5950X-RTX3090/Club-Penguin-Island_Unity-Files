Shader "CpRemix/World/Wave Osc Depth (Vertex Alpha)" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_OscDir ("World Osc  Dir", Vector) = (1,0,0,1)
		_OscAxis ("World Osc Axs (w = wave freq)", Vector) = (0,1,0,1)
		_OscSpeed ("Osc Speed", Float) = 1
		_DepthMultiply ("DepthMultiply", Range(0, 1)) = 1
	}
	SubShader {
		Tags { "RenderType" = "Opaque" }
		Pass {
			Tags { "RenderType" = "Opaque" }
			GpuProgramID 65288
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
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
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
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_4_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD4;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat0.x = u_xlat0.x * _OscAxis.w;
					    u_xlat0.x = _Time.y * _OscSpeed + u_xlat0.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat3.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat3.x * u_xlat0.x;
					    u_xlat3.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat3.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    u_xlat0.xy = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat0.xy = u_xlat0.xy * _Time.xx;
					    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
					    vs_TEXCOORD4.xy = u_xlat1.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat0.xy);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0.x = u_xlat1.y + (-_DeepestYCoord);
					    u_xlat3.x = (-u_xlat1.y) + _SurfaceYCoord;
					    u_xlat6 = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat0.x = u_xlat0.x / u_xlat6;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat6 = u_xlat0.x * _DepthMultiply;
					    u_xlat0.x = (-u_xlat0.x) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * vec3(u_xlat6) + u_xlat0.xxx;
					    u_xlatb6 = 0.0<u_xlat3.x;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat6 * u_xlat3.x;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat1.x = unity_WorldToObject[0].y;
					    u_xlat1.y = unity_WorldToObject[1].y;
					    u_xlat1.z = unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz * in_NORMAL0.yyy;
					    u_xlat2.x = unity_WorldToObject[0].x;
					    u_xlat2.y = unity_WorldToObject[1].x;
					    u_xlat2.z = unity_WorldToObject[2].x;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.xxx + u_xlat1.xyz;
					    u_xlat2.x = unity_WorldToObject[0].z;
					    u_xlat2.y = unity_WorldToObject[1].z;
					    u_xlat2.z = unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.zzz + u_xlat1.xyz;
					    u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    u_xlat6 = u_xlat6 * u_xlat1.y;
					    u_xlatb9 = 0.0<u_xlat6;
					    u_xlat6 = u_xlat6 * u_xlat6;
					    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
					    u_xlat6 = u_xlat9 * u_xlat6;
					    u_xlat3.x = u_xlat3.x * u_xlat6;
					    u_xlat0.x = u_xlat0.x * u_xlat3.x;
					    u_xlat0.x = u_xlat0.x * _DynSurfaceMultiplier;
					    u_xlat0.x = u_xlat0.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat0.xxx * _SurfaceReflectionColor.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
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
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
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
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD4;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat0.x = u_xlat0.x * _OscAxis.w;
					    u_xlat0.x = _Time.y * _OscSpeed + u_xlat0.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat3.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat3.x * u_xlat0.x;
					    u_xlat3.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat3.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    u_xlat0.x = u_xlat0.z / _ProjectionParams.y;
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    vs_TEXCOORD6 = u_xlat0.x * unity_FogParams.z + unity_FogParams.w;
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    u_xlat0.xy = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat0.xy = u_xlat0.xy * _Time.xx;
					    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
					    vs_TEXCOORD4.xy = u_xlat1.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat0.xy);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0.x = u_xlat1.y + (-_DeepestYCoord);
					    u_xlat3.x = (-u_xlat1.y) + _SurfaceYCoord;
					    u_xlat6 = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat0.x = u_xlat0.x / u_xlat6;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat6 = u_xlat0.x * _DepthMultiply;
					    u_xlat0.x = (-u_xlat0.x) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * vec3(u_xlat6) + u_xlat0.xxx;
					    u_xlatb6 = 0.0<u_xlat3.x;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat6 * u_xlat3.x;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat1.x = unity_WorldToObject[0].y;
					    u_xlat1.y = unity_WorldToObject[1].y;
					    u_xlat1.z = unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz * in_NORMAL0.yyy;
					    u_xlat2.x = unity_WorldToObject[0].x;
					    u_xlat2.y = unity_WorldToObject[1].x;
					    u_xlat2.z = unity_WorldToObject[2].x;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.xxx + u_xlat1.xyz;
					    u_xlat2.x = unity_WorldToObject[0].z;
					    u_xlat2.y = unity_WorldToObject[1].z;
					    u_xlat2.z = unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.zzz + u_xlat1.xyz;
					    u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    u_xlat6 = u_xlat6 * u_xlat1.y;
					    u_xlatb9 = 0.0<u_xlat6;
					    u_xlat6 = u_xlat6 * u_xlat6;
					    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
					    u_xlat6 = u_xlat9 * u_xlat6;
					    u_xlat3.x = u_xlat3.x * u_xlat6;
					    u_xlat0.x = u_xlat0.x * u_xlat3.x;
					    u_xlat0.x = u_xlat0.x * _DynSurfaceMultiplier;
					    u_xlat0.x = u_xlat0.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat0.xxx * _SurfaceReflectionColor.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
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
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
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
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD4;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat0.x = u_xlat0.x * _OscAxis.w;
					    u_xlat0.x = _Time.y * _OscSpeed + u_xlat0.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat3.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat3.x * u_xlat0.x;
					    u_xlat3.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat3.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    u_xlat0.x = u_xlat0.z / _ProjectionParams.y;
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * unity_FogParams.y;
					    vs_TEXCOORD6 = exp2((-u_xlat0.x));
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    u_xlat0.xy = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat0.xy = u_xlat0.xy * _Time.xx;
					    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
					    vs_TEXCOORD4.xy = u_xlat1.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat0.xy);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0.x = u_xlat1.y + (-_DeepestYCoord);
					    u_xlat3.x = (-u_xlat1.y) + _SurfaceYCoord;
					    u_xlat6 = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat0.x = u_xlat0.x / u_xlat6;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat6 = u_xlat0.x * _DepthMultiply;
					    u_xlat0.x = (-u_xlat0.x) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * vec3(u_xlat6) + u_xlat0.xxx;
					    u_xlatb6 = 0.0<u_xlat3.x;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat6 * u_xlat3.x;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat1.x = unity_WorldToObject[0].y;
					    u_xlat1.y = unity_WorldToObject[1].y;
					    u_xlat1.z = unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz * in_NORMAL0.yyy;
					    u_xlat2.x = unity_WorldToObject[0].x;
					    u_xlat2.y = unity_WorldToObject[1].x;
					    u_xlat2.z = unity_WorldToObject[2].x;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.xxx + u_xlat1.xyz;
					    u_xlat2.x = unity_WorldToObject[0].z;
					    u_xlat2.y = unity_WorldToObject[1].z;
					    u_xlat2.z = unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.zzz + u_xlat1.xyz;
					    u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    u_xlat6 = u_xlat6 * u_xlat1.y;
					    u_xlatb9 = 0.0<u_xlat6;
					    u_xlat6 = u_xlat6 * u_xlat6;
					    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
					    u_xlat6 = u_xlat9 * u_xlat6;
					    u_xlat3.x = u_xlat3.x * u_xlat6;
					    u_xlat0.x = u_xlat0.x * u_xlat3.x;
					    u_xlat0.x = u_xlat0.x * _DynSurfaceMultiplier;
					    u_xlat0.x = u_xlat0.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat0.xxx * _SurfaceReflectionColor.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
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
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
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
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_5_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec3 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD4;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat0.x = u_xlat0.x * _OscAxis.w;
					    u_xlat0.x = _Time.y * _OscSpeed + u_xlat0.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat3.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat3.x * u_xlat0.x;
					    u_xlat3.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat3.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    u_xlat0.x = u_xlat0.z / _ProjectionParams.y;
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * unity_FogParams.x;
					    u_xlat0.x = u_xlat0.x * (-u_xlat0.x);
					    vs_TEXCOORD6 = exp2(u_xlat0.x);
					    vs_COLOR0.xyz = in_COLOR0.xyz;
					    u_xlat0.xy = vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) * vec2(_SurfaceVelocityX, _SurfaceVelocityZ);
					    u_xlat0.xy = u_xlat0.xy * _Time.xx;
					    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
					    vs_TEXCOORD4.xy = u_xlat1.xz * vec2(vec2(_DynSurfaceTexTile, _DynSurfaceTexTile)) + (-u_xlat0.xy);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0.x = u_xlat1.y + (-_DeepestYCoord);
					    u_xlat3.x = (-u_xlat1.y) + _SurfaceYCoord;
					    u_xlat6 = (-_DeepestYCoord) + _SurfaceYCoord;
					    u_xlat0.x = u_xlat0.x / u_xlat6;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat6 = u_xlat0.x * _DepthMultiply;
					    u_xlat0.x = (-u_xlat0.x) * _DepthMultiply + 1.0;
					    vs_TEXCOORD2.xyz = _DepthColor.xyz * vec3(u_xlat6) + u_xlat0.xxx;
					    u_xlatb6 = 0.0<u_xlat3.x;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat6 * u_xlat3.x;
					    u_xlat3.x = min(u_xlat3.x, 1.0);
					    u_xlat1.x = unity_WorldToObject[0].y;
					    u_xlat1.y = unity_WorldToObject[1].y;
					    u_xlat1.z = unity_WorldToObject[2].y;
					    u_xlat1.xyz = u_xlat1.xyz * in_NORMAL0.yyy;
					    u_xlat2.x = unity_WorldToObject[0].x;
					    u_xlat2.y = unity_WorldToObject[1].x;
					    u_xlat2.z = unity_WorldToObject[2].x;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.xxx + u_xlat1.xyz;
					    u_xlat2.x = unity_WorldToObject[0].z;
					    u_xlat2.y = unity_WorldToObject[1].z;
					    u_xlat2.z = unity_WorldToObject[2].z;
					    u_xlat1.xyz = u_xlat2.xyz * in_NORMAL0.zzz + u_xlat1.xyz;
					    u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    u_xlat6 = u_xlat6 * u_xlat1.y;
					    u_xlatb9 = 0.0<u_xlat6;
					    u_xlat6 = u_xlat6 * u_xlat6;
					    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
					    u_xlat6 = u_xlat9 * u_xlat6;
					    u_xlat3.x = u_xlat3.x * u_xlat6;
					    u_xlat0.x = u_xlat0.x * u_xlat3.x;
					    u_xlat0.x = u_xlat0.x * _DynSurfaceMultiplier;
					    u_xlat0.x = u_xlat0.x * 0.5;
					    vs_TEXCOORD3.xyz = u_xlat0.xxx * _SurfaceReflectionColor.xyz;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
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
						vec4 unused_0_1[8];
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD3.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vs_TEXCOORD2.xyz + u_xlat1.xyz;
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
						vec4 unused_0_1[8];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD3.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD6;
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
						vec4 unused_0_1[8];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD3.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD6;
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
						vec4 unused_0_1[8];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _SurfaceReflectionsRGB;
					uniform  sampler2D unity_Lightmap;
					in  vec3 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat6 = u_xlat0.w * unity_Lightmap_HDR.x;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat1 = texture(_SurfaceReflectionsRGB, vs_TEXCOORD4.xy);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD3.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD6;
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