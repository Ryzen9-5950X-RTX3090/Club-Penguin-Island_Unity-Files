Shader "CpRemix/World/Wave Osc Scroll with Alpha no add" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_OscDir ("World Osc  Dir", Vector) = (1,0,0,1)
		_OscAxis ("World Osc Axs (w = wave freq)", Vector) = (0,1,0,1)
		_OscSpeed ("Osc Speed", Float) = 1
		_XScrollSpeed ("X Scroll Speed", Float) = 1
		_YScrollSpeed ("Y Scroll Speed", Float) = 1
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha One, SrcAlpha One
			ZWrite Off
			Cull Off
			GpuProgramID 17869
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
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
						float _XScrollSpeed;
						float _YScrollSpeed;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat2.x = _OscSpeed * _Time.y;
					    u_xlat0.x = u_xlat0.x * _OscAxis.w + u_xlat2.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat2.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat2.x * u_xlat0.x;
					    u_xlat2.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat2.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0 = in_COLOR0;
					    vs_TEXCOORD1.xy = _Time.xx * vec2(_XScrollSpeed, _YScrollSpeed) + in_TEXCOORD0.xy;
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
						vec4 unused_0_0[4];
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
						float _XScrollSpeed;
						float _YScrollSpeed;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat2.x = _OscSpeed * _Time.y;
					    u_xlat0.x = u_xlat0.x * _OscAxis.w + u_xlat2.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat2.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat2.x * u_xlat0.x;
					    u_xlat2.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat2.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0 = in_COLOR0;
					    vs_TEXCOORD1.xy = _Time.xx * vec2(_XScrollSpeed, _YScrollSpeed) + in_TEXCOORD0.xy;
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
						vec4 unused_0_0[4];
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
						float _XScrollSpeed;
						float _YScrollSpeed;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat2.x = _OscSpeed * _Time.y;
					    u_xlat0.x = u_xlat0.x * _OscAxis.w + u_xlat2.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat2.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat2.x * u_xlat0.x;
					    u_xlat2.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat2.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0 = in_COLOR0;
					    vs_TEXCOORD1.xy = _Time.xx * vec2(_XScrollSpeed, _YScrollSpeed) + in_TEXCOORD0.xy;
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
						vec4 unused_0_0[4];
						vec3 _OscDir;
						vec4 _OscAxis;
						float _OscSpeed;
						float _XScrollSpeed;
						float _YScrollSpeed;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					out vec4 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					void main()
					{
					    u_xlat0.xyz = _OscAxis.yyy * unity_WorldToObject[1].xyz;
					    u_xlat0.xyz = unity_WorldToObject[0].xyz * _OscAxis.xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_WorldToObject[2].xyz * _OscAxis.zzz + u_xlat0.xyz;
					    u_xlat0.x = dot(in_POSITION0.xyz, u_xlat0.xyz);
					    u_xlat2.x = _OscSpeed * _Time.y;
					    u_xlat0.x = u_xlat0.x * _OscAxis.w + u_xlat2.x;
					    u_xlat0.x = sin(u_xlat0.x);
					    u_xlat2.x = (-in_COLOR0.w) + 1.0;
					    u_xlat0.x = u_xlat2.x * u_xlat0.x;
					    u_xlat2.xyz = _OscDir.yyy * unity_WorldToObject[1].xyz;
					    u_xlat2.xyz = unity_WorldToObject[0].xyz * _OscDir.xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_WorldToObject[2].xyz * _OscDir.zzz + u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz + in_POSITION0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    vs_TEXCOORD0 = in_COLOR0;
					    vs_TEXCOORD1.xy = _Time.xx * vec2(_XScrollSpeed, _YScrollSpeed) + in_TEXCOORD0.xy;
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
					in  vec4 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    SV_Target0 = u_xlat0 * vs_TEXCOORD0.wwww;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_LINEAR" }
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
					in  vec4 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    SV_Target0 = u_xlat0 * vs_TEXCOORD0.wwww;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP" }
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
					in  vec4 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    SV_Target0 = u_xlat0 * vs_TEXCOORD0.wwww;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "FOG_EXP2" }
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
					in  vec4 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    SV_Target0 = u_xlat0 * vs_TEXCOORD0.wwww;
					    return;
					}"
				}
			}
		}
	}
}