Shader "CpRemix/World/SunsetThankYouHeart" {
	Properties {
		_ColorA ("Color A", Vector) = (1,1,1,1)
		_ColorB ("Color B", Vector) = (1,1,1,1)
		_MainTex ("Texture (RGB)", 2D) = "white" {}
		_XScrollSpeedA ("X Scroll Speed A", Float) = 1
		_XScrollSpeedB ("X Scroll Speed B", Float) = -1
		_AlphaYScrollSpeed ("Alpha Scroll Speed", Float) = 1
		_Cutoff ("Alpha cutoff", Float) = 0.1
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" }
		Pass {
			Tags { "QUEUE" = "Transparent" }
			Blend One One, One One
			GpuProgramID 29651
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
						vec4 unused_0_0[5];
						float _XScrollSpeedA;
						float _XScrollSpeedB;
						float _AlphaYScrollSpeed;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 unused_1_1[8];
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
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out vec4 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat4;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat4.x = _XScrollSpeedB * _Time.x;
					    u_xlat4.y = 0.0;
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * vec2(1.5, 1.5) + u_xlat4.xy;
					    u_xlat0.xw = vec2(_XScrollSpeedA, _AlphaYScrollSpeed) * _Time.xx;
					    u_xlat0.y = float(0.0);
					    u_xlat0.z = float(0.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    vs_TEXCOORD3.xy = u_xlat0.zw + in_TEXCOORD0.xy;
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
						vec4 unused_0_0[2];
						float _Cutoff;
						vec4 _ColorA;
						vec4 _ColorB;
						vec4 unused_0_4;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  vec4 vs_COLOR0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD2.xy);
					    u_xlat0 = u_xlat0.yyyy * _ColorB;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0 = u_xlat1.xxxx * _ColorA + u_xlat0;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD3.xy);
					    u_xlat1.x = u_xlat1.z + (-_Cutoff);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
					    SV_Target0 = u_xlat0 * vs_COLOR0;
					    return;
					}"
				}
			}
		}
	}
	Fallback "Diffuse"
}