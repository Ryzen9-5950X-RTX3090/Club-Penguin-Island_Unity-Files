Shader "CpRemix/UI/CurvedBorderButtonWithSparkleGreyedIcon" {
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
		_ShadowVec ("Shadow Vector", Vector) = (-0.05,0.15,0,0)
		_ShadowInnerVec ("Shadow Inner Vector", Vector) = (-0.05,0.15,0,0)
		_InnerShading ("Inner Shading Value", Float) = 0.2
		_OuterShading ("Outer Shading Value", Float) = 0.2
		_InnerShadowBlur ("Inner Shadow Falloff", Float) = 0.03
		_OuterShadowBlur ("Outer Shadow Falloff", Float) = 0.03
		_EffectTex ("Sparkle Texture", 2D) = "white" {}
		_RotationScalar ("Rotation Speed", Float) = 0.1
		_EffectAlpha ("Effect Alpha", Float) = 0.7
		_GreyGamma ("Grey Gamma (1/gamma)", Float) = 0.46
		_GreySaturate ("Grey Black Level", Float) = 0
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
			GpuProgramID 3887
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
						float _RotationScalar;
						vec4 unused_0_7;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					float u_xlat3;
					float u_xlat4;
					vec2 u_xlat10;
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
					    u_xlat10.xy = _ShadowVec.xy * vec2(0.5, 0.5);
					    vs_TEXCOORD0.xy = u_xlat0.xy * u_xlat1.xz + (-u_xlat10.xy);
					    u_xlat0.xy = in_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * u_xlat1.yz + (-u_xlat10.xy);
					    u_xlat0.x = _RotationScalar * _Time.x;
					    u_xlat1.x = cos(u_xlat0.x);
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat1.y = u_xlat0.x;
					    u_xlat0.xy = in_TEXCOORD0.xy + vec2(-0.5, -0.5);
					    u_xlat2.x = dot(u_xlat1.xy, u_xlat0.xy);
					    u_xlat10.x = (-_RotationScalar) * _Time.x;
					    u_xlat3 = sin(u_xlat10.x);
					    u_xlat4 = cos(u_xlat10.x);
					    u_xlat1.z = u_xlat3;
					    u_xlat1.w = u_xlat4;
					    u_xlat2.y = dot(u_xlat1.zx, u_xlat0.xy);
					    u_xlat10.x = dot(u_xlat1.wz, u_xlat0.xy);
					    u_xlat10.y = dot(u_xlat1.yw, u_xlat0.xy);
					    vs_TEXCOORD3.xy = u_xlat10.xy + vec2(0.5, 0.5);
					    vs_TEXCOORD2.xy = u_xlat2.xy + vec2(0.5, 0.5);
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
						vec2 _ShadowInnerVec;
						float _InnerShading;
						float _OuterShading;
						float _OuterShadowBlur;
						float _InnerShadowBlur;
						vec4 unused_0_12;
						float _TileAttenuation;
						float _EffectAlpha;
						float _GreyGamma;
						float _GreySaturate;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _EffectTex;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					bool u_xlatb4;
					float u_xlat5;
					float u_xlat9;
					bool u_xlatb9;
					float u_xlat12;
					float u_xlat13;
					float u_xlat14;
					float u_xlat15;
					void main()
					{
					    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
					    u_xlat0.xy = u_xlat0.xy + u_xlat0.xy;
					    u_xlat0.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
					    u_xlatb4 = u_xlat0.x>=1.0;
					    u_xlat4.x = u_xlatb4 ? 1.0 : float(0.0);
					    u_xlat4.x = u_xlat4.x * _TileAttenuation;
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0.x = (-u_xlat4.x) * u_xlat0.x + u_xlat1.w;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat2 = texture(_EffectTex, vs_TEXCOORD2.xy);
					    u_xlat4.x = u_xlat2.w * _EffectAlpha;
					    u_xlat2.xyz = u_xlat2.xyz + (-_Centre.xyz);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat2.xyz + _Centre.xyz;
					    u_xlat2 = texture(_EffectTex, vs_TEXCOORD3.xy);
					    u_xlat2.xyz = (-u_xlat4.xyz) + u_xlat2.xyz;
					    u_xlat13 = u_xlat2.w * _EffectAlpha;
					    u_xlat13 = u_xlat13 * 0.699999988;
					    u_xlat4.xyz = vec3(u_xlat13) * u_xlat2.xyz + u_xlat4.xyz;
					    u_xlat1.xyz = (-u_xlat4.xyz) + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat1.xy = log2(abs(vs_TEXCOORD1.xy));
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_Roundness, _Roundness));
					    u_xlat1.xy = exp2(u_xlat1.xy);
					    u_xlat12 = dot(u_xlat1.xy, u_xlat1.xy);
					    u_xlat12 = sqrt(u_xlat12);
					    u_xlat1.xy = (-vec2(_AAliasSize, _BorderSize)) + vec2(1.0, 1.0);
					    u_xlat9 = max(u_xlat12, u_xlat1.x);
					    u_xlat9 = min(u_xlat9, 1.0);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat9;
					    u_xlat5 = log2(u_xlat1.y);
					    u_xlat5 = u_xlat5 * _Roundness;
					    u_xlat5 = exp2(u_xlat5);
					    u_xlat9 = float(1.0) / _AAliasSize;
					    u_xlat1.x = (-u_xlat1.x) * u_xlat9 + 1.0;
					    u_xlat13 = u_xlat1.x * 1000.0;
					    u_xlat13 = min(u_xlat13, 1.0);
					    u_xlat2.xyz = vec3(u_xlat13) * _Border.xyz;
					    u_xlat3 = vs_TEXCOORD1.xyxy + vec4(_ShadowVec.x, _ShadowVec.y, _ShadowInnerVec.x, _ShadowInnerVec.y);
					    u_xlat3 = log2(abs(u_xlat3));
					    u_xlat3 = u_xlat3 * vec4(vec4(_Roundness, _Roundness, _Roundness, _Roundness));
					    u_xlat3 = exp2(u_xlat3);
					    u_xlat13 = dot(u_xlat3.zw, u_xlat3.zw);
					    u_xlat14 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat14 = sqrt(u_xlat14);
					    u_xlat13 = sqrt(u_xlat13);
					    u_xlat3.xyz = (-vec3(_InnerShadowBlur, _OuterShadowBlur, _InnerShading)) + vec3(1.0, 1.0, 1.0);
					    u_xlat13 = max(u_xlat13, u_xlat3.x);
					    u_xlat13 = min(u_xlat5, u_xlat13);
					    u_xlat13 = (-u_xlat3.x) + u_xlat13;
					    u_xlat3.xw = vec2(1.0, 1.0) / vec2(_OuterShadowBlur, _InnerShadowBlur);
					    u_xlat13 = (-u_xlat13) * u_xlat3.w + 1.0;
					    u_xlat13 = clamp(u_xlat13, 0.0, 1.0);
					    u_xlat15 = (-u_xlat3.z) + 1.0;
					    u_xlat13 = u_xlat13 * u_xlat15 + u_xlat3.z;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat13) + (-u_xlat2.xyz);
					    u_xlat13 = u_xlat5 + (-_AAliasSize);
					    u_xlat12 = max(u_xlat12, u_xlat13);
					    u_xlat12 = min(u_xlat5, u_xlat12);
					    u_xlat12 = (-u_xlat13) + u_xlat12;
					    u_xlat12 = (-u_xlat12) * u_xlat9 + 1.0;
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz + u_xlat2.xyz;
					    u_xlat0.x = dot(u_xlat0.xyz, vec3(0.212599993, 0.715200007, 0.0722000003));
					    u_xlat0.x = log2(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * _GreyGamma;
					    u_xlat0.x = exp2(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx + vec3(_GreySaturate);
					    u_xlat5 = max(u_xlat14, u_xlat3.y);
					    u_xlat5 = min(u_xlat5, 1.0);
					    u_xlat5 = (-u_xlat3.y) + u_xlat5;
					    u_xlat5 = (-u_xlat5) * u_xlat3.x + 1.0;
					    u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
					    u_xlat5 = u_xlat5 * _OuterShading;
					    u_xlatb9 = 9.99999975e-05<u_xlat1.x;
					    u_xlat0.w = (u_xlatb9) ? u_xlat1.x : u_xlat5;
					    SV_Target0 = u_xlat0 * vs_COLOR0;
					    return;
					}"
				}
			}
		}
	}
}