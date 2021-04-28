Shader "Custom/mg_pt_Shader_PizzaSauce" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,0.5)
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" }
		Pass {
			Tags { "QUEUE" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			Cull Off
			GpuProgramID 64631
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
						vec4 unused_0_0[4];
						mat4x4 _ScaleTransform;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					out vec4 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * _ScaleTransform[1];
					    u_xlat0 = _ScaleTransform[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = _ScaleTransform[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = _ScaleTransform[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0 = in_POSITION0;
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
						vec4 _Color;
						vec4 unused_0_2[5];
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bvec2 u_xlatb0;
					bool u_xlatb1;
					void main()
					{
					    u_xlatb0.xy = lessThan(abs(vs_TEXCOORD0.xyxx), vec4(0.5, 0.5, 0.0, 0.0)).xy;
					    u_xlatb0.x = u_xlatb0.y && u_xlatb0.x;
					    if(u_xlatb0.x){
					        u_xlat0.xy = vs_TEXCOORD0.xy + vec2(0.5, 0.5);
					        u_xlat0 = texture(_MainTex, u_xlat0.xy);
					        u_xlatb1 = 0.0<u_xlat0.w;
					        u_xlat0 = u_xlat0 * _Color;
					        SV_Target0 = bool(u_xlatb1) ? u_xlat0 : vec4(0.0, 0.0, 0.0, 0.0);
					    } else {
					        SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    }
					    return;
					}"
				}
			}
		}
	}
	Fallback "Unlit/Transparent"
}