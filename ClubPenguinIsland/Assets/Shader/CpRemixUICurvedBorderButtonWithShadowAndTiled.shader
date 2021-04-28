Shader "CpRemix/UI/CurvedBorderButtonWithShadowAndTiled" {
	Properties {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "black" {}
		_Color ("Tint", Vector) = (1,1,1,1)
		_Tile ("Tile", Vector) = (1,1,0,0)
		_TileAttenuation ("Tile Attenuation", Float) = 0
		_Centre ("Centre Color", Vector) = (0,0.372,0.792,1)
		_Border ("Border Color", Vector) = (1,1,1,1)
		_BorderSize ("Border Size ", Float) = 0.15
		_AAliasSize ("Anti-Aliasing Size", Float) = 0.03
		_Roundness ("Roundness", Float) = 1
		_ShadowVec ("Shadow Outer Vector", Vector) = (-0.05,0.15,0,0)
		_ShadowInnerVec ("Shadow Inner Vector", Vector) = (-0.05,0.15,0,0)
		_InnerShading ("Inner Shading Value", Float) = 0.2
		_OuterShading ("Outer Shading Value", Float) = 0.2
		_InnerShadowBlur ("Inner Shadow Falloff", Float) = 0.03
		_OuterShadowBlur ("Outer Shadow Falloff", Float) = 0.03
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
			GpuProgramID 10796
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
						vec4 unused_0_2[3];
						vec2 _ShadowVec;
						vec4 unused_0_4;
						vec4 _Tile;
						vec4 unused_0_6;
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
					out vec2 vs_TEXCOORD1;
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
					    vs_COLOR0 = in_COLOR0 * _Color;
					    u_xlat0.xy = in_TEXCOORD0.xy * _Tile.xy + _Tile.zw;
					    u_xlat1.yz = abs(_ShadowVec.xy) * vec2(0.5, 0.5) + vec2(1.0, 1.0);
					    u_xlat1.x = u_xlat1.y / u_xlat1.z;
					    u_xlat4.xy = _ShadowVec.xy * vec2(0.5, 0.5);
					    vs_TEXCOORD0.xy = u_xlat0.xy * u_xlat1.xz + (-u_xlat4.xy);
					    u_xlat0.xy = in_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * u_xlat1.yz + (-u_xlat4.xy);
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
						float _Roundness;
						vec2 _ShadowVec;
						vec2 _ShadowInnerVec;
						float _InnerShading;
						float _OuterShading;
						float _OuterShadowBlur;
						float _InnerShadowBlur;
						vec4 unused_0_11;
						float _TileAttenuation;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					vec3 u_xlat3;
					bool u_xlatb3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					bool u_xlatb7;
					float u_xlat9;
					float u_xlat10;
					void main()
					{
					    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
					    u_xlat0.xy = u_xlat0.xy + u_xlat0.xy;
					    u_xlat0.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
					    u_xlatb3 = u_xlat0.x>=1.0;
					    u_xlat3.x = u_xlatb3 ? 1.0 : float(0.0);
					    u_xlat3.x = u_xlat3.x * _TileAttenuation;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.x = (-u_xlat3.x) * u_xlat0.x + u_xlat1.w;
					    u_xlat3.xyz = u_xlat1.xyz + (-_Centre.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + _Centre.xyz;
					    u_xlat1 = vs_TEXCOORD1.xyxy + vec4(_ShadowVec.x, _ShadowVec.y, _ShadowInnerVec.x, _ShadowInnerVec.y);
					    u_xlat1 = log2(abs(u_xlat1));
					    u_xlat1 = u_xlat1 * vec4(vec4(_Roundness, _Roundness, _Roundness, _Roundness));
					    u_xlat1 = exp2(u_xlat1);
					    u_xlat9 = dot(u_xlat1.zw, u_xlat1.zw);
					    u_xlat1.x = dot(u_xlat1.xy, u_xlat1.xy);
					    u_xlat9 = sqrt(u_xlat9);
					    u_xlat4.xyz = (-vec3(_InnerShadowBlur, _OuterShadowBlur, _InnerShading)) + vec3(1.0, 1.0, 1.0);
					    u_xlat9 = max(u_xlat9, u_xlat4.x);
					    u_xlat9 = min(u_xlat9, 1.0);
					    u_xlat9 = (-u_xlat4.x) + u_xlat9;
					    u_xlat2.xy = vec2(1.0, 1.0) / vec2(_OuterShadowBlur, _InnerShadowBlur);
					    u_xlat9 = (-u_xlat9) * u_xlat2.y + 1.0;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    u_xlat4.x = (-u_xlat4.z) + 1.0;
					    u_xlat9 = u_xlat9 * u_xlat4.x + u_xlat4.z;
					    u_xlat4.xz = log2(abs(vs_TEXCOORD1.xy));
					    u_xlat4.xz = u_xlat4.xz * vec2(vec2(_Roundness, _Roundness));
					    u_xlat4.xz = exp2(u_xlat4.xz);
					    u_xlat1.y = dot(u_xlat4.xz, u_xlat4.xz);
					    u_xlat1.xy = sqrt(u_xlat1.xy);
					    u_xlat4.z = (-_AAliasSize) + 1.0;
					    u_xlat1.xy = max(u_xlat4.yz, u_xlat1.xy);
					    u_xlat1.xy = min(u_xlat1.xy, vec2(1.0, 1.0));
					    u_xlat1.xy = (-u_xlat4.yz) + u_xlat1.xy;
					    u_xlat10 = float(1.0) / _AAliasSize;
					    u_xlat4.x = (-u_xlat1.y) * u_xlat10 + 1.0;
					    u_xlat10 = u_xlat4.x * 1000.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat5.xyz = vec3(u_xlat10) * _Border.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9) + (-u_xlat5.xyz);
					    u_xlat0.xyz = u_xlat4.xxx * u_xlat0.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat1.x) * u_xlat2.x + 1.0;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x * _OuterShading;
					    u_xlatb7 = 9.99999975e-05<u_xlat4.x;
					    u_xlat0.w = (u_xlatb7) ? u_xlat4.x : u_xlat1.x;
					    SV_Target0 = u_xlat0 * vs_COLOR0;
					    return;
					}"
				}
			}
		}
	}
}