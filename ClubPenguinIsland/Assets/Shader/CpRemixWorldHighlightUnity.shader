Shader "CpRemix/World/HighlightUnity" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_HighlightColor ("Highlight Color", Vector) = (1,1,1,1)
		_HighlightIntensity ("Highlight Intensity", Range(0, 1)) = 0.6
	}
	SubShader {
		LOD 100
		Tags { "RenderType" = "Opaque" }
		Pass {
			LOD 100
			Tags { "RenderType" = "Opaque" }
			GpuProgramID 22814
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
						vec3 _HighlightColor;
						float _HighlightIntensity;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3[6];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
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
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.y = _SinTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat0.x = _CosTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat0.xy = -abs(u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _HighlightIntensity;
					    vs_COLOR0.xyz = u_xlat0.xxx * _HighlightColor.xyz;
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
						vec3 _HighlightColor;
						float _HighlightIntensity;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3[2];
						vec4 _ProjectionParams;
						vec4 unused_1_5[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
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
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat4;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.y = _SinTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat0.x = _CosTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat4 = u_xlat0.z / _ProjectionParams.y;
					    u_xlat4 = (-u_xlat4) + 1.0;
					    u_xlat4 = u_xlat4 * _ProjectionParams.z;
					    u_xlat4 = max(u_xlat4, 0.0);
					    vs_TEXCOORD3 = u_xlat4 * unity_FogParams.z + unity_FogParams.w;
					    u_xlat0.xy = -abs(u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _HighlightIntensity;
					    vs_COLOR0.xyz = u_xlat0.xxx * _HighlightColor.xyz;
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
						vec3 _HighlightColor;
						float _HighlightIntensity;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3[2];
						vec4 _ProjectionParams;
						vec4 unused_1_5[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
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
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat4;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.y = _SinTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat0.x = _CosTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat4 = u_xlat0.z / _ProjectionParams.y;
					    u_xlat4 = (-u_xlat4) + 1.0;
					    u_xlat4 = u_xlat4 * _ProjectionParams.z;
					    u_xlat4 = max(u_xlat4, 0.0);
					    u_xlat4 = u_xlat4 * unity_FogParams.y;
					    vs_TEXCOORD3 = exp2((-u_xlat4));
					    u_xlat0.xy = -abs(u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _HighlightIntensity;
					    vs_COLOR0.xyz = u_xlat0.xxx * _HighlightColor.xyz;
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
						vec3 _HighlightColor;
						float _HighlightIntensity;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3[2];
						vec4 _ProjectionParams;
						vec4 unused_1_5[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
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
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					out float vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat4;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.y = _SinTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat0.x = _CosTime.w * 6.0 + (-u_xlat0.x);
					    u_xlat4 = u_xlat0.z / _ProjectionParams.y;
					    u_xlat4 = (-u_xlat4) + 1.0;
					    u_xlat4 = u_xlat4 * _ProjectionParams.z;
					    u_xlat4 = max(u_xlat4, 0.0);
					    u_xlat4 = u_xlat4 * unity_FogParams.x;
					    u_xlat4 = u_xlat4 * (-u_xlat4);
					    vs_TEXCOORD3 = exp2(u_xlat4);
					    u_xlat0.xy = -abs(u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _HighlightIntensity;
					    vs_COLOR0.xyz = u_xlat0.xxx * _HighlightColor.xyz;
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
						vec4 unused_0_1[2];
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_COLOR0;
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
					    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xyz + vs_COLOR0.xyz;
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
						vec4 unused_0_1[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD3;
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
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD3;
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
						vec4 unused_0_1[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD3;
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
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD3;
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
						vec4 unused_0_1[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_COLOR0;
					in  float vs_TEXCOORD3;
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
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + vs_COLOR0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
					    u_xlat6 = vs_TEXCOORD3;
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