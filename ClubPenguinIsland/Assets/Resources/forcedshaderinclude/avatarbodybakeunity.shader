Shader "CpRemix/Avatar Body Bake" {
	Properties {
		_Diffuse ("Diffuse", 2D) = "black" {}
		_BodyColorsMaskTex ("Body Color Mask", 2D) = "black" {}
		_BodyRedChannelColor ("Body Red Channel Color", Vector) = (1,0,0,1)
		_BodyGreenChannelColor ("Body Green Channel Color", Vector) = (1,1,0,1)
		_BodyBlueChannelColor ("Body Blue Channel Color", Vector) = (1,0,1,1)
		_DetailAndMatcapMaskAndEmissive ("r=detail g=MatCapMask b=emissive", 2D) = "black" {}
		_AtlasOffsetU ("AtlasOffset U", Float) = 0
		_AtlasOffsetV ("AtlasOffset U", Float) = 0
		_AtlasOffsetScaleU ("AtlasOffset U Scale", Float) = 1
		_AtlasOffsetScaleV ("AtlasOffset V Scale", Float) = 1
	}
	SubShader {
		Pass {
			Tags { "LIGHTMODE" = "FORWARDBASE" }
			Blend One One, One One
			GpuProgramID 49943
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
						vec4 unused_0_0[6];
						float _AtlasOffsetU;
						float _AtlasOffsetV;
						float _AtlasOffsetScaleU;
						float _AtlasOffsetScaleV;
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
					    u_xlat0.xy = in_TEXCOORD0.xy + (-vec2(_AtlasOffsetU, _AtlasOffsetV));
					    vs_TEXCOORD0.xy = u_xlat0.xy / vec2(_AtlasOffsetScaleU, _AtlasOffsetScaleV);
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
						vec3 _BodyRedChannelColor;
						vec3 _BodyGreenChannelColor;
						vec3 _BodyBlueChannelColor;
						vec4 unused_0_4[2];
					};
					uniform  sampler2D _Diffuse;
					uniform  sampler2D _BodyColorsMaskTex;
					uniform  sampler2D _DetailAndMatcapMaskAndEmissive;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					bool u_xlatb1;
					vec3 u_xlat2;
					void main()
					{
					    u_xlat0 = texture(_BodyColorsMaskTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat0.yyy * _BodyGreenChannelColor.xyz;
					    u_xlat1.xyz = u_xlat0.xxx * _BodyRedChannelColor.xyz + u_xlat1.xyz;
					    u_xlat1.xyz = u_xlat0.zzz * _BodyBlueChannelColor.xyz + u_xlat1.xyz;
					    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
					    u_xlat0.x = max(u_xlat0.z, u_xlat0.x);
					    u_xlat2.xyz = u_xlat0.xxx * u_xlat1.xyz;
					    u_xlat0.x = (-u_xlat0.x) + 1.0;
					    u_xlat1 = texture(_Diffuse, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat2.xyz;
					    u_xlat1 = texture(_DetailAndMatcapMaskAndEmissive, vs_TEXCOORD0.xy);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx;
					    u_xlat0.w = (-u_xlat1.y) * 0.5 + 0.5;
					    u_xlat1.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
					    u_xlat1.xy = u_xlat1.xy + u_xlat1.xy;
					    u_xlat1.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
					    u_xlatb1 = 1.0>=u_xlat1.x;
					    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
					    SV_Target0 = u_xlat0 * u_xlat1.xxxx;
					    return;
					}"
				}
			}
		}
	}
}