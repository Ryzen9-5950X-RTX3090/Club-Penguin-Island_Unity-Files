Shader "CpRemix/World/Snow Ramp" {
	Properties {
		_SnowRampTex ("Snow Ramp", 2D) = "white" {}
		[HideInspector] _BlobShadowTex ("Blob Shadow Tex", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType" = "Opaque" }
		Pass {
			Tags { "RenderType" = "Opaque" }
			GpuProgramID 17079
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
						float _ShadowPlaneDim;
						float _ShadowTextureDim;
						vec3 _ShadowPlaneWorldPos;
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
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_3_1;
					};
					in  vec4 in_POSITION0;
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_NORMAL0.yy * vec2(0.449999988, 0.449999988) + vec2(0.5, 0.5);
					    u_xlat0.xz = u_xlat0.xz + (-_ShadowPlaneWorldPos.xz);
					    vs_TEXCOORD3.z = u_xlat0.y;
					    u_xlat3 = _ShadowPlaneDim * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = _ShadowPlaneDim / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / _ShadowPlaneDim;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD3.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _ShadowPlaneDim;
						float _ShadowTextureDim;
						vec3 _ShadowPlaneWorldPos;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
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
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD2 = u_xlat9 * unity_FogParams.z + unity_FogParams.w;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_NORMAL0.yy * vec2(0.449999988, 0.449999988) + vec2(0.5, 0.5);
					    u_xlat0.xz = u_xlat0.xz + (-_ShadowPlaneWorldPos.xz);
					    vs_TEXCOORD3.z = u_xlat0.y;
					    u_xlat3 = _ShadowPlaneDim * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = _ShadowPlaneDim / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / _ShadowPlaneDim;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD3.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _ShadowPlaneDim;
						float _ShadowTextureDim;
						vec3 _ShadowPlaneWorldPos;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
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
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    u_xlat9 = u_xlat9 * unity_FogParams.y;
					    vs_TEXCOORD2 = exp2((-u_xlat9));
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_NORMAL0.yy * vec2(0.449999988, 0.449999988) + vec2(0.5, 0.5);
					    u_xlat0.xz = u_xlat0.xz + (-_ShadowPlaneWorldPos.xz);
					    vs_TEXCOORD3.z = u_xlat0.y;
					    u_xlat3 = _ShadowPlaneDim * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = _ShadowPlaneDim / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / _ShadowPlaneDim;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD3.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _ShadowPlaneDim;
						float _ShadowTextureDim;
						vec3 _ShadowPlaneWorldPos;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
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
					in  vec4 in_NORMAL0;
					in  vec2 in_TEXCOORD1;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out float vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat1;
					    u_xlat9 = u_xlat1.z / _ProjectionParams.y;
					    u_xlat9 = (-u_xlat9) + 1.0;
					    u_xlat9 = u_xlat9 * _ProjectionParams.z;
					    u_xlat9 = max(u_xlat9, 0.0);
					    u_xlat9 = u_xlat9 * unity_FogParams.x;
					    u_xlat9 = u_xlat9 * (-u_xlat9);
					    vs_TEXCOORD2 = exp2(u_xlat9);
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD0.xy = in_NORMAL0.yy * vec2(0.449999988, 0.449999988) + vec2(0.5, 0.5);
					    u_xlat0.xz = u_xlat0.xz + (-_ShadowPlaneWorldPos.xz);
					    vs_TEXCOORD3.z = u_xlat0.y;
					    u_xlat3 = _ShadowPlaneDim * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = _ShadowPlaneDim / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / _ShadowPlaneDim;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD3.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						vec4 unused_0_1[3];
					};
					uniform  sampler2D _SnowRampTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD3;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					float u_xlat4;
					bool u_xlatb4;
					void main()
					{
					    u_xlat0 = texture(_BlobShadowTex, vs_TEXCOORD3.xy);
					    u_xlatb4 = vs_TEXCOORD3.z>=u_xlat0.y;
					    u_xlat4 = (u_xlatb4) ? 2.0 : 1.0;
					    u_xlat2.x = u_xlat0.y + (-vs_TEXCOORD3.z);
					    u_xlat2.x = abs(u_xlat2.x) * u_xlat4 + u_xlat4;
					    u_xlat2.x = u_xlat2.x + -0.5;
					    u_xlat2.x = max(u_xlat2.x, 1.0);
					    u_xlat0.x = u_xlat0.x * u_xlat2.x;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat1 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat2.x = u_xlat1.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xxx;
					    u_xlat1 = texture(_SnowRampTex, vs_TEXCOORD0.xy);
					    u_xlat1.xyz = u_xlat2.xyz * u_xlat1.xyz;
					    SV_Target0 = u_xlat0.xxxx * u_xlat1;
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
						vec4 unused_0_1[3];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _SnowRampTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_BlobShadowTex, vs_TEXCOORD3.xy);
					    u_xlatb4 = vs_TEXCOORD3.z>=u_xlat0.y;
					    u_xlat4 = (u_xlatb4) ? 2.0 : 1.0;
					    u_xlat2.x = u_xlat0.y + (-vs_TEXCOORD3.z);
					    u_xlat2.x = abs(u_xlat2.x) * u_xlat4 + u_xlat4;
					    u_xlat2.x = u_xlat2.x + -0.5;
					    u_xlat2.x = max(u_xlat2.x, 1.0);
					    u_xlat0.x = u_xlat0.x * u_xlat2.x;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat1 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat2.x = u_xlat1.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xxx;
					    u_xlat1 = texture(_SnowRampTex, vs_TEXCOORD0.xy);
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat1.xyz;
					    u_xlat1.x = u_xlat0.x * u_xlat1.w;
					    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xxx + (-unity_FogColor.xyz);
					    SV_Target0.w = u_xlat1.x;
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_1[3];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _SnowRampTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_BlobShadowTex, vs_TEXCOORD3.xy);
					    u_xlatb4 = vs_TEXCOORD3.z>=u_xlat0.y;
					    u_xlat4 = (u_xlatb4) ? 2.0 : 1.0;
					    u_xlat2.x = u_xlat0.y + (-vs_TEXCOORD3.z);
					    u_xlat2.x = abs(u_xlat2.x) * u_xlat4 + u_xlat4;
					    u_xlat2.x = u_xlat2.x + -0.5;
					    u_xlat2.x = max(u_xlat2.x, 1.0);
					    u_xlat0.x = u_xlat0.x * u_xlat2.x;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat1 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat2.x = u_xlat1.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xxx;
					    u_xlat1 = texture(_SnowRampTex, vs_TEXCOORD0.xy);
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat1.xyz;
					    u_xlat1.x = u_xlat0.x * u_xlat1.w;
					    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xxx + (-unity_FogColor.xyz);
					    SV_Target0.w = u_xlat1.x;
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_1[3];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _SnowRampTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  float vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					float u_xlat4;
					bool u_xlatb4;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_BlobShadowTex, vs_TEXCOORD3.xy);
					    u_xlatb4 = vs_TEXCOORD3.z>=u_xlat0.y;
					    u_xlat4 = (u_xlatb4) ? 2.0 : 1.0;
					    u_xlat2.x = u_xlat0.y + (-vs_TEXCOORD3.z);
					    u_xlat2.x = abs(u_xlat2.x) * u_xlat4 + u_xlat4;
					    u_xlat2.x = u_xlat2.x + -0.5;
					    u_xlat2.x = max(u_xlat2.x, 1.0);
					    u_xlat0.x = u_xlat0.x * u_xlat2.x;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat1 = texture(unity_Lightmap, vs_TEXCOORD1.xy);
					    u_xlat2.x = u_xlat1.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xxx;
					    u_xlat1 = texture(_SnowRampTex, vs_TEXCOORD0.xy);
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat1.xyz;
					    u_xlat1.x = u_xlat0.x * u_xlat1.w;
					    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xxx + (-unity_FogColor.xyz);
					    SV_Target0.w = u_xlat1.x;
					    u_xlat6 = vs_TEXCOORD2;
					    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
					    return;
					}"
				}
			}
		}
	}
}