Shader "CpRemix/UI/CurvedBorderButtonWithShadow" {
	Properties {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "black" {}
		_Color ("Tint", Vector) = (1,1,1,1)
		_Centre ("Centre Color", Vector) = (0,0.372,0.792,1)
		_Border ("Border Color", Vector) = (1,1,1,1)
		_BorderSize ("Border Size ", Float) = 0.15
		_AAliasSize ("Anti-Aliasing Size", Float) = 0.03
		_Roundness ("Roundness", Float) = 1
		_ShadowVec ("Shadow Vector", Vector) = (-0.05,0.15,0,0)
		_ScaleBox ("Scale For Shadow", Float) = 1.2
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
	}
	SubShader {
		Tags { "PreviewType" = "Plane" "QUEUE" = "Transparent" }
		Pass {
			Tags { "PreviewType" = "Plane" "QUEUE" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ColorMask 0 -1
			ZWrite Off
			Cull Off
			Stencil {
				ReadMask 0
				WriteMask 0
				Comp Disabled
				Pass Keep
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 53401
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
						vec4 _Color;
						vec4 unused_0_2[4];
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_COLOR0;
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
					    vs_COLOR0 = in_COLOR0 * _Color;
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
						vec4 unused_0_0[3];
						vec4 _Centre;
						vec4 _Border;
						float _AAliasSize;
						float _BorderSize;
						float _Roundness;
						vec2 _ShadowVec;
						float _ScaleBox;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec2 u_xlat0;
					float u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec4 u_xlat4;
					vec2 u_xlat5;
					bool u_xlatb5;
					float u_xlat6;
					vec2 u_xlat10;
					bool u_xlatb10;
					float u_xlat11;
					float u_xlat15;
					float u_xlat16;
					void main()
					{
					    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat10.xy = u_xlat0.xy * vec2(vec2(_ScaleBox, _ScaleBox));
					    u_xlat0.xy = u_xlat0.xy * vec2(vec2(_ScaleBox, _ScaleBox)) + _ShadowVec.xy;
					    u_xlat0.xy = log2(abs(u_xlat0.xy));
					    u_xlat0.xy = u_xlat0.xy * vec2(vec2(_Roundness, _Roundness));
					    u_xlat0.xy = exp2(u_xlat0.xy);
					    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
					    u_xlat5.xy = log2(abs(u_xlat10.xy));
					    u_xlat5.xy = u_xlat5.xy * vec2(vec2(_Roundness, _Roundness));
					    u_xlat5.xy = exp2(u_xlat5.xy);
					    u_xlat0.y = dot(u_xlat5.xy, u_xlat5.xy);
					    u_xlat0.xy = sqrt(u_xlat0.xy);
					    u_xlat10.xy = (-vec2(_AAliasSize, _BorderSize)) + vec2(1.0, 1.0);
					    u_xlat1 = max(u_xlat10.x, u_xlat0.y);
					    u_xlat1 = min(u_xlat1, 1.0);
					    u_xlat1 = (-u_xlat10.x) + u_xlat1;
					    u_xlat6 = float(1.0) / _AAliasSize;
					    u_xlat1 = (-u_xlat1) * u_xlat6 + 1.0;
					    u_xlat11 = u_xlat1 * 1000.0;
					    u_xlat11 = min(u_xlat11, 1.0);
					    u_xlat15 = log2(u_xlat10.y);
					    u_xlat15 = u_xlat15 * _Roundness;
					    u_xlat15 = exp2(u_xlat15);
					    u_xlat16 = u_xlat15 + (-_AAliasSize);
					    u_xlat5.x = max(u_xlat0.y, u_xlat16);
					    u_xlat5.x = min(u_xlat15, u_xlat5.x);
					    u_xlat5.x = (-u_xlat16) + u_xlat5.x;
					    u_xlat5.x = (-u_xlat5.x) * u_xlat6 + 1.0;
					    u_xlat2.x = (-u_xlat5.x) + 1.0;
					    u_xlat2.xyz = u_xlat2.xxx * _Border.xyz;
					    u_xlat2.xyz = vec3(u_xlat11) * u_xlat2.xyz;
					    u_xlat3.xyz = u_xlat5.xxx * _Centre.xyz;
					    u_xlat4 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat4.xyz = u_xlat4.www * u_xlat4.xyz;
					    u_xlat11 = (-u_xlat4.w) + 1.0;
					    u_xlat4.xyz = u_xlat5.xxx * u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat11) + u_xlat4.xyz;
					    u_xlat5.x = max(u_xlat0.x, u_xlat16);
					    u_xlat0.x = max(u_xlat10.x, u_xlat0.x);
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat0.x = (-u_xlat10.x) + u_xlat0.x;
					    u_xlat0.x = (-u_xlat0.x) * u_xlat6 + 1.0;
					    u_xlat5.x = min(u_xlat15, u_xlat5.x);
					    u_xlat5.x = (-u_xlat16) + u_xlat5.x;
					    u_xlat5.x = (-u_xlat5.x) * u_xlat6 + 1.0;
					    u_xlatb10 = u_xlat5.x<0.899999976;
					    u_xlat5.x = u_xlat5.x * 0.200000003 + 0.800000012;
					    u_xlat5.x = (u_xlatb10) ? u_xlat5.x : 1.0;
					    u_xlat2.xyz = u_xlat3.xyz * u_xlat5.xxx + u_xlat2.xyz;
					    u_xlatb5 = 0.5<u_xlat0.x;
					    u_xlat0.x = u_xlat0.x * 0.200000003;
					    u_xlat0.x = u_xlatb5 ? u_xlat0.x : float(0.0);
					    u_xlat2.w = max(u_xlat0.x, u_xlat1);
					    SV_Target0 = u_xlat2 * vs_COLOR0;
					    return;
					}"
				}
			}
		}
	}
}