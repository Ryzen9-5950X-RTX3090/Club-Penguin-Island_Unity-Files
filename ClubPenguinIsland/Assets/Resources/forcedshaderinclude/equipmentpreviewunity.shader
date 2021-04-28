Shader "CpRemix/Equipment Preview" {
	Properties {
		_Diffuse ("Diffuse", 2D) = "black" {}
		_Decal123OpacityTex ("Decals 123 Opacity", 2D) = "black" {}
		_Decal1Tex ("Decal 1 Texture", 2D) = "white" {}
		_Decal1Color ("Decal 1 Color", Vector) = (0.26,0.78,1,1)
		_Decal1Scale ("Decal 1 Scale", Range(0.1, 30)) = 1
		_Decal1UOffset ("Decal 1 uOffset", Range(-0.5, 0.5)) = 0
		_Decal1VOffset ("Decal 1 vOffset", Range(-0.5, 0.5)) = 0
		_Decal1RotationRads ("Decal 1 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal1Repeat ("Repeat Decal 1", Float) = 0
		_Decal2Tex ("Decal 2 Texture", 2D) = "white" {}
		_Decal2Color ("Decal 2 Color", Vector) = (0.06,0.55,1,1)
		_Decal2Scale ("Decal 2 Scale", Range(0.1, 30)) = 1
		_Decal2UOffset ("Decal 2 uOffset", Range(-0.5, 0.5)) = 0
		_Decal2VOffset ("Decal 2 vOffset", Range(-0.5, 0.5)) = 0
		_Decal2RotationRads ("Decal 2 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal2Repeat ("Repeat Decal 2", Float) = 0
		_Decal3Tex ("Decal 3 Texture", 2D) = "white" {}
		_Decal3Color ("Decal 3 Color", Vector) = (0.01,0.33,0.95,1)
		_Decal3Scale ("Decal 3 Scale", Range(0.1, 30)) = 1
		_Decal3UOffset ("Decal 3 uOffset", Range(-0.5, 0.5)) = 0
		_Decal3VOffset ("Decal 3 vOffset", Range(-0.5, 0.5)) = 0
		_Decal3RotationRads ("Decal 3 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal3Repeat ("Repeat Decal 3", Float) = 0
		_Decal4Tex ("Decal 4 Texture", 2D) = "black" {}
		_Decal4Color ("Decal 4 Color", Vector) = (1,1,1,1)
		_Decal4Scale ("Decal 4 Scale", Range(0.1, 30)) = 1
		_Decal4UOffset ("Decal 4 uOffset", Range(-0.5, 0.5)) = 0
		_Decal4VOffset ("Decal 4 vOffset", Range(-0.5, 0.5)) = 0
		_Decal4RotationRads ("Decal 4 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal4Repeat ("Repeat Decal 4", Float) = 0
		_Decal5Tex ("Decal 5 Texture", 2D) = "black" {}
		_Decal5Color ("Decal 5 Color", Vector) = (1,1,1,1)
		_Decal5Scale ("Decal 5 Scale", Range(0.1, 30)) = 1
		_Decal5UOffset ("Decal 5 uOffset", Range(-0.5, 0.5)) = 0
		_Decal5VOffset ("Decal 5 vOffset", Range(-0.5, 0.5)) = 0
		_Decal5RotationRads ("Decal 5 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal5Repeat ("Repeat Decal 5", Float) = 0
		_Decal6Tex ("Decal 6 Texture", 2D) = "black" {}
		_Decal6Color ("Decal 6 Color", Vector) = (1,1,1,1)
		_Decal6Scale ("Decal 6 Scale", Range(0.1, 30)) = 1
		_Decal6UOffset ("Decal 6 uOffset", Range(-0.5, 0.5)) = 0
		_Decal6VOffset ("Decal 6 vOffset", Range(-0.5, 0.5)) = 0
		_Decal6RotationRads ("Decal 6 Rotation Rads", Range(-3.141, 3.141)) = 0
		[MaterialToggle] _Decal6Repeat ("Repeat Decal 6", Float) = 0
		_BodyColorsMaskTex ("Body Color Mask", 2D) = "black" {}
		_BodyRedChannelColor ("Body Red Channel Color", Vector) = (1,0,0,1)
		_BodyGreenChannelColor ("Body Green Channel Color", Vector) = (1,1,0,1)
		_BodyBlueChannelColor ("Body Blue Channel Color", Vector) = (1,0,1,1)
		_EmissiveColorTint ("EmissiveColorTint", Vector) = (1,1,1,1)
		_DetailAndMatcapMaskAndEmissive ("r=detail g=matcap b=emissive", 2D) = "black" {}
	}
	SubShader {
		Pass {
			GpuProgramID 55822
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
						float _Decal1Scale;
						float _Decal1UOffset;
						float _Decal1VOffset;
						float _Decal1RotationRads;
						float _Decal2Scale;
						float _Decal2UOffset;
						float _Decal2VOffset;
						float _Decal2RotationRads;
						float _Decal3Scale;
						float _Decal3UOffset;
						float _Decal3VOffset;
						float _Decal3RotationRads;
						float _Decal4Scale;
						float _Decal4UOffset;
						float _Decal4VOffset;
						float _Decal4RotationRads;
						float _Decal5Scale;
						float _Decal5UOffset;
						float _Decal5VOffset;
						float _Decal5RotationRads;
						float _Decal6Scale;
						float _Decal6UOffset;
						float _Decal6VOffset;
						float _Decal6RotationRads;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD4;
					out vec2 vs_TEXCOORD5;
					out vec2 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat2;
					vec3 u_xlat3;
					vec2 u_xlat8;
					vec2 u_xlat9;
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
					    u_xlat0.xy = vec2(_Decal1UOffset, _Decal1VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal1RotationRads);
					    u_xlat2 = cos(_Decal1RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat9.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat9.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat9.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal1UOffset, _Decal1VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(vec2(_Decal1Scale, _Decal1Scale)) + vec2(0.5, 0.5);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.xy = vec2(_Decal2UOffset, _Decal2VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal2RotationRads);
					    u_xlat2 = cos(_Decal2RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat1.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat1.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat1.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal2UOffset, _Decal2VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD2.xy = u_xlat0.xy * vec2(vec2(_Decal2Scale, _Decal2Scale)) + vec2(0.5, 0.5);
					    u_xlat0.xy = vec2(_Decal3UOffset, _Decal3VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal3RotationRads);
					    u_xlat2 = cos(_Decal3RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat9.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat9.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat9.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal3UOffset, _Decal3VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD3.xy = u_xlat0.xy * vec2(vec2(_Decal3Scale, _Decal3Scale)) + vec2(0.5, 0.5);
					    u_xlat0.xy = vec2(_Decal4UOffset, _Decal4VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal4RotationRads);
					    u_xlat2 = cos(_Decal4RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat1.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat1.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat1.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal4UOffset, _Decal4VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD4.xy = u_xlat0.xy * vec2(vec2(_Decal4Scale, _Decal4Scale)) + vec2(0.5, 0.5);
					    u_xlat0.xy = vec2(_Decal5UOffset, _Decal5VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal5RotationRads);
					    u_xlat2 = cos(_Decal5RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat9.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat9.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat9.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal5UOffset, _Decal5VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD5.xy = u_xlat0.xy * vec2(vec2(_Decal5Scale, _Decal5Scale)) + vec2(0.5, 0.5);
					    u_xlat0.xy = vec2(_Decal6UOffset, _Decal6VOffset) + vec2(-0.5, -0.5);
					    u_xlat8.xy = u_xlat0.xy + in_TEXCOORD0.xy;
					    u_xlat1.x = sin(_Decal6RotationRads);
					    u_xlat2 = cos(_Decal6RotationRads);
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    u_xlat3.x = (-u_xlat1.x);
					    u_xlat1.y = dot(u_xlat8.xy, u_xlat3.xy);
					    u_xlat1.x = dot(u_xlat8.xy, u_xlat3.yz);
					    u_xlat0.xy = (-u_xlat0.xy) + u_xlat1.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(_Decal6UOffset, _Decal6VOffset);
					    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
					    vs_TEXCOORD6.xy = u_xlat0.xy * vec2(vec2(_Decal6Scale, _Decal6Scale)) + vec2(0.5, 0.5);
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
						vec3 _Decal1Color;
						float _Decal1Repeat;
						vec3 _Decal2Color;
						float _Decal2Repeat;
						vec3 _Decal3Color;
						float _Decal3Repeat;
						vec3 _Decal4Color;
						float _Decal4Repeat;
						vec3 _Decal5Color;
						float _Decal5Repeat;
						vec3 _Decal6Color;
						float _Decal6Repeat;
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _Decal123OpacityTex;
					uniform  sampler2D _Decal3Tex;
					uniform  sampler2D _Decal2Tex;
					uniform  sampler2D _Decal1Tex;
					uniform  sampler2D _Decal6Tex;
					uniform  sampler2D _Decal5Tex;
					uniform  sampler2D _Decal4Tex;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					 vec4 phase0_Input0_2;
					in  vec2 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD4;
					 vec4 phase0_Input0_3;
					in  vec2 vs_TEXCOORD5;
					in  vec2 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec4 u_xlat1;
					bool u_xlatb1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					float u_xlat6;
					bool u_xlatb6;
					float u_xlat7;
					bool u_xlatb7;
					float u_xlat12;
					vec2 u_xlat13;
					bool u_xlatb13;
					float u_xlat19;
					float u_xlat20;
					void main()
					{
					    phase0_Input0_2 = vec4(vs_TEXCOORD2, vs_TEXCOORD3);
					    phase0_Input0_3 = vec4(vs_TEXCOORD4, vs_TEXCOORD5);
					    u_xlat0 = phase0_Input0_2.zwxy + vec4(-0.5, -0.5, -0.5, -0.5);
					    u_xlat0 = u_xlat0 + u_xlat0;
					    u_xlat0.xy = max(abs(u_xlat0.yw), abs(u_xlat0.xz));
					    u_xlat12 = _Decal3Repeat * 255.0 + 1.0;
					    u_xlatb0 = u_xlat12>=u_xlat0.x;
					    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
					    u_xlat1 = texture(_Decal3Tex, phase0_Input0_2.zw);
					    u_xlat1 = u_xlat0.xxxx * u_xlat1;
					    u_xlat0.xzw = u_xlat1.xyz * _Decal3Color.xyz;
					    u_xlat1.xy = vs_TEXCOORD1.xy + vec2(-0.5, -0.5);
					    u_xlat1.xy = u_xlat1.xy + u_xlat1.xy;
					    u_xlat1.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
					    u_xlat7 = _Decal1Repeat * 255.0 + 1.0;
					    u_xlatb1 = u_xlat7>=u_xlat1.x;
					    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
					    u_xlat2 = texture(_Decal1Tex, vs_TEXCOORD1.xy);
					    u_xlat2 = u_xlat1.xxxx * u_xlat2;
					    u_xlat1.xyz = u_xlat2.xyz * _Decal1Color.xyz;
					    u_xlat2.x = _Decal2Repeat * 255.0 + 1.0;
					    u_xlatb6 = u_xlat2.x>=u_xlat0.y;
					    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
					    u_xlat3 = texture(_Decal2Tex, phase0_Input0_2.xy);
					    u_xlat3 = vec4(u_xlat6) * u_xlat3;
					    u_xlat2.xyz = u_xlat3.xyz * _Decal2Color.xyz;
					    u_xlat4 = texture(_Decal123OpacityTex, vs_TEXCOORD0.xy);
					    u_xlat6 = u_xlat3.w * u_xlat4.y;
					    u_xlat2.xyz = vec3(u_xlat6) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.w * u_xlat4.z + u_xlat6;
					    u_xlat19 = u_xlat1.w * u_xlat4.z;
					    u_xlat6 = u_xlat2.w * u_xlat4.x + u_xlat6;
					    u_xlat20 = u_xlat2.w * u_xlat4.x;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat20) + u_xlat2.xyz;
					    u_xlat0.xzw = u_xlat0.xzw * vec3(u_xlat19) + u_xlat1.xyz;
					    u_xlat6 = min(u_xlat6, 1.0);
					    u_xlat1 = phase0_Input0_3.zwxy + vec4(-0.5, -0.5, -0.5, -0.5);
					    u_xlat1 = u_xlat1 + u_xlat1;
					    u_xlat1.xy = max(abs(u_xlat1.yw), abs(u_xlat1.xz));
					    u_xlat13.x = _Decal5Repeat * 255.0 + 1.0;
					    u_xlatb1 = u_xlat13.x>=u_xlat1.x;
					    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
					    u_xlat2 = texture(_Decal5Tex, phase0_Input0_3.zw);
					    u_xlat2 = u_xlat1.xxxx * u_xlat2;
					    u_xlat1.x = u_xlat4.y * u_xlat2.w;
					    u_xlat2.xyz = u_xlat2.xyz * _Decal5Color.xyz;
					    u_xlat13.xy = vs_TEXCOORD6.xy + vec2(-0.5, -0.5);
					    u_xlat13.xy = u_xlat13.xy + u_xlat13.xy;
					    u_xlat13.x = max(abs(u_xlat13.y), abs(u_xlat13.x));
					    u_xlat19 = _Decal6Repeat * 255.0 + 1.0;
					    u_xlatb13 = u_xlat19>=u_xlat13.x;
					    u_xlat13.x = u_xlatb13 ? 1.0 : float(0.0);
					    u_xlat3 = texture(_Decal6Tex, vs_TEXCOORD6.xy);
					    u_xlat3 = u_xlat13.xxxx * u_xlat3;
					    u_xlat13.x = (-u_xlat3.w) * u_xlat4.z + 1.0;
					    u_xlat13.y = (-u_xlat1.x) * u_xlat13.x + 1.0;
					    u_xlat20 = _Decal4Repeat * 255.0 + 1.0;
					    u_xlatb7 = u_xlat20>=u_xlat1.y;
					    u_xlat7 = u_xlatb7 ? 1.0 : float(0.0);
					    u_xlat5 = texture(_Decal4Tex, phase0_Input0_3.xy);
					    u_xlat5 = vec4(u_xlat7) * u_xlat5;
					    u_xlat1.y = u_xlat4.x * u_xlat5.w;
					    u_xlat4.xyw = u_xlat5.xyz * _Decal4Color.xyz;
					    u_xlat1.xy = u_xlat13.xy * u_xlat1.xy;
					    u_xlat19 = u_xlat3.w * u_xlat4.z + u_xlat1.x;
					    u_xlat2.xyz = u_xlat1.xxx * u_xlat2.xyz;
					    u_xlat1.x = u_xlat4.z * u_xlat3.w;
					    u_xlat3.xyz = u_xlat3.xyz * _Decal6Color.xyz;
					    u_xlat19 = u_xlat1.y * u_xlat13.x + u_xlat19;
					    u_xlat7 = u_xlat13.x * u_xlat1.y;
					    u_xlat2.xyz = u_xlat4.xyw * vec3(u_xlat7) + u_xlat2.xyz;
					    u_xlat1.xyz = u_xlat3.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    u_xlat19 = min(u_xlat19, 1.0);
					    u_xlat2.x = (-u_xlat19) + 1.0;
					    u_xlat0.xzw = u_xlat0.xzw * u_xlat2.xxx;
					    u_xlat0.xzw = u_xlat1.xyz * vec3(u_xlat19) + u_xlat0.xzw;
					    u_xlat6 = u_xlat6 + u_xlat19;
					    u_xlat6 = min(u_xlat6, 1.0);
					    u_xlat0.xzw = vec3(u_xlat6) * u_xlat0.xzw;
					    u_xlat6 = (-u_xlat6) + 1.0;
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    SV_Target0.xyz = u_xlat1.xyz * vec3(u_xlat6) + u_xlat0.xzw;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
		Pass {
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			GpuProgramID 66564
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
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_0_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
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
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
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
						vec3 _BodyRedChannelColor;
						vec3 _BodyGreenChannelColor;
						vec3 _BodyBlueChannelColor;
					};
					uniform  sampler2D _BodyColorsMaskTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec3 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_BodyColorsMaskTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat0.yyy * _BodyGreenChannelColor.xyz;
					    u_xlat1.xyz = u_xlat0.xxx * _BodyRedChannelColor.xyz + u_xlat1.xyz;
					    SV_Target0.xyz = u_xlat0.zzz * _BodyBlueChannelColor.xyz + u_xlat1.xyz;
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    SV_Target0.w = max(u_xlat0.z, u_xlat0.x);
					    return;
					}"
				}
			}
		}
		Pass {
			Tags { "LIGHTMODE" = "FORWARDBASE" }
			Blend DstColor SrcColor, DstColor SrcColor
			GpuProgramID 135564
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
						vec4 unused_0_0[3];
						vec4 _LightColor0;
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_3_1[16];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_3[2];
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec4 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec3 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat0.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
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
					    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat1.xyz = glstate_lightmodel_ambient.xyz * vec3(0.899999976, 0.899999976, 0.899999976);
					    vs_TEXCOORD1.xyz = u_xlat0.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat1.xyz;
					    vs_COLOR0.xyz = in_COLOR0.xyz;
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
						vec3 _EmissiveColorTint;
						vec4 unused_0_2;
					};
					uniform  sampler2D _DetailAndMatcapMaskAndEmissive;
					in  vec2 vs_TEXCOORD0;
					in  vec3 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					float u_xlat1;
					vec3 u_xlat3;
					void main()
					{
					    u_xlat0 = texture(_DetailAndMatcapMaskAndEmissive, vs_TEXCOORD0.xy);
					    u_xlat0.xyw = u_xlat0.xxx * vs_TEXCOORD1.xyz;
					    u_xlat1 = (-u_xlat0.z) + 1.0;
					    u_xlat3.xyz = u_xlat0.zzz * _EmissiveColorTint.xyz;
					    u_xlat0.xyz = u_xlat0.xyw * vec3(u_xlat1) + u_xlat3.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vec3(0.469999999, 0.469999999, 0.469999999);
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
	}
}