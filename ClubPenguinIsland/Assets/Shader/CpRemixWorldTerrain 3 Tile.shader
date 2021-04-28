Shader "CpRemix/World/Terrain 3 Tile" {
	Properties {
		_RedChannelTex ("Red Channel Texture", 2D) = "" {}
		_RedChannelTexTile ("Red Channel Tiling", Range(0.1, 50)) = 1
		_RedChannelSpec ("Red Channel Specularity", Range(0, 1)) = 0
		_RedChannelShininess ("Red Channel Shininess", Range(0.5, 20)) = 0.5
		_RedSpecFallOff ("Red Spec FallOff", Range(1, 10)) = 1
		_GreenChannelTex ("Green Channel Texture", 2D) = "" {}
		_GreenChannelTexTile ("Green Channel Tiling", Range(0.1, 50)) = 1
		_GreenChannelSpec ("Green Channel Specularity", Range(0, 1)) = 0
		_GreenChannelShininess ("Green Channel Shininess", Range(0.5, 20)) = 0.5
		_GreenSpecFallOff ("Green Spec FallOff", Range(1, 10)) = 1
		_BlueChannelTex ("Blue Channel Texture", 2D) = "" {}
		_BlueChannelTexTile ("Blue Channel Tiling", Range(0.1, 50)) = 1
		_BlueChannelSpec ("Blue Channel Specularity", Range(0, 1)) = 0
		_BlueChannelShininess ("Blue Channel Shininess", Range(0.5, 20)) = 0.5
		_BlueSpecFallOff ("Blue Spec FallOff", Range(1, 10)) = 1
		_AlphaDepthColor ("Alpha Depth Color", Vector) = (0,0,0.5,1)
		[HideInspector] _BlobShadowTex ("Blob Shadow Tex", 2D) = "white" {}
	}
	SubShader {
		Pass {
			Tags { "LIGHTMODE" = "ALWAYS" }
			GpuProgramID 47581
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
						float _RedChannelTexTile;
						float _GreenChannelTexTile;
						float _BlueChannelTexTile;
						vec4 unused_0_4;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD5;
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
					    vs_COLOR0 = in_COLOR0;
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * vec2(_RedChannelTexTile);
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * vec2(_GreenChannelTexTile);
					    vs_TEXCOORD3.xy = in_TEXCOORD0.xy * vec2(_BlueChannelTexTile);
					    u_xlat0.xz = u_xlat0.xz + (-vec2(_ShadowPlaneWorldPos.x, _ShadowPlaneWorldPos.z));
					    vs_TEXCOORD5.z = u_xlat0.y;
					    u_xlat3 = unused_0_4.w * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = unused_0_4.w / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / unused_0_4.w;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD5.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _RedChannelTexTile;
						float _GreenChannelTexTile;
						float _BlueChannelTexTile;
						vec4 unused_0_4;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out float vs_TEXCOORD4;
					out vec3 vs_TEXCOORD5;
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
					    vs_TEXCOORD4 = u_xlat9 * unity_FogParams.z + unity_FogParams.w;
					    vs_COLOR0 = in_COLOR0;
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * vec2(_RedChannelTexTile);
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * vec2(_GreenChannelTexTile);
					    vs_TEXCOORD3.xy = in_TEXCOORD0.xy * vec2(_BlueChannelTexTile);
					    u_xlat0.xz = u_xlat0.xz + (-vec2(_ShadowPlaneWorldPos.x, _ShadowPlaneWorldPos.z));
					    vs_TEXCOORD5.z = u_xlat0.y;
					    u_xlat3 = unused_0_4.w * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = unused_0_4.w / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / unused_0_4.w;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD5.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _RedChannelTexTile;
						float _GreenChannelTexTile;
						float _BlueChannelTexTile;
						vec4 unused_0_4;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out float vs_TEXCOORD4;
					out vec3 vs_TEXCOORD5;
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
					    vs_TEXCOORD4 = exp2((-u_xlat9));
					    vs_COLOR0 = in_COLOR0;
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * vec2(_RedChannelTexTile);
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * vec2(_GreenChannelTexTile);
					    vs_TEXCOORD3.xy = in_TEXCOORD0.xy * vec2(_BlueChannelTexTile);
					    u_xlat0.xz = u_xlat0.xz + (-vec2(_ShadowPlaneWorldPos.x, _ShadowPlaneWorldPos.z));
					    vs_TEXCOORD5.z = u_xlat0.y;
					    u_xlat3 = unused_0_4.w * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = unused_0_4.w / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / unused_0_4.w;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD5.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						float _RedChannelTexTile;
						float _GreenChannelTexTile;
						float _BlueChannelTexTile;
						vec4 unused_0_4;
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
					in  vec4 in_COLOR0;
					in  vec2 in_TEXCOORD0;
					in  vec2 in_TEXCOORD1;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out float vs_TEXCOORD4;
					out vec3 vs_TEXCOORD5;
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
					    vs_TEXCOORD4 = exp2(u_xlat9);
					    vs_COLOR0 = in_COLOR0;
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * vec2(_RedChannelTexTile);
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * vec2(_GreenChannelTexTile);
					    vs_TEXCOORD3.xy = in_TEXCOORD0.xy * vec2(_BlueChannelTexTile);
					    u_xlat0.xz = u_xlat0.xz + (-vec2(_ShadowPlaneWorldPos.x, _ShadowPlaneWorldPos.z));
					    vs_TEXCOORD5.z = u_xlat0.y;
					    u_xlat3 = unused_0_4.w * 0.5;
					    u_xlat0.xy = u_xlat0.xz / vec2(u_xlat3);
					    u_xlat6 = unused_0_4.w / _ShadowTextureDim;
					    u_xlat6 = u_xlat6 / unused_0_4.w;
					    u_xlat0.xy = vec2(u_xlat6) + u_xlat0.xy;
					    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
					    vs_TEXCOORD5.xy = u_xlat0.xy * vec2(0.5, 0.5);
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
						vec4 unused_0_1[4];
						vec3 _AlphaDepthColor;
						vec4 unused_0_3;
					};
					uniform  sampler2D _RedChannelTex;
					uniform  sampler2D _GreenChannelTex;
					uniform  sampler2D _BlueChannelTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat4;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0 = texture(_GreenChannelTex, vs_TEXCOORD2.xy);
					    u_xlat1 = texture(_BlueChannelTex, vs_TEXCOORD3.xy);
					    u_xlat2.xyz = (-vs_COLOR0.xyw) + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat2.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.yyy + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xxx * u_xlat0.xyz;
					    u_xlat1.xyz = _AlphaDepthColor.xyz * u_xlat2.zzz + vs_COLOR0.www;
					    u_xlat2 = texture(_RedChannelTex, vs_TEXCOORD1.xy);
					    u_xlat0.xyz = u_xlat2.xyz * vs_COLOR0.xxx + u_xlat0.xyz;
					    u_xlat2 = texture(unity_Lightmap, vs_TEXCOORD0.xy);
					    u_xlat9 = u_xlat2.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat9);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz;
					    u_xlat1 = texture(_BlobShadowTex, vs_TEXCOORD5.xy);
					    u_xlatb9 = vs_TEXCOORD5.z>=u_xlat1.y;
					    u_xlat9 = (u_xlatb9) ? 2.0 : 1.0;
					    u_xlat4 = u_xlat1.y + (-vs_TEXCOORD5.z);
					    u_xlat9 = abs(u_xlat4) * u_xlat9 + u_xlat9;
					    u_xlat9 = u_xlat9 + -0.5;
					    u_xlat9 = max(u_xlat9, 1.0);
					    u_xlat9 = u_xlat1.x * u_xlat9;
					    u_xlat9 = min(u_xlat9, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
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
						vec4 unused_0_1[4];
						vec3 _AlphaDepthColor;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _RedChannelTex;
					uniform  sampler2D _GreenChannelTex;
					uniform  sampler2D _BlueChannelTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  float vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat4;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0 = texture(_GreenChannelTex, vs_TEXCOORD2.xy);
					    u_xlat1 = texture(_BlueChannelTex, vs_TEXCOORD3.xy);
					    u_xlat2.xyz = (-vs_COLOR0.xyw) + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat2.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.yyy + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xxx * u_xlat0.xyz;
					    u_xlat1.xyz = _AlphaDepthColor.xyz * u_xlat2.zzz + vs_COLOR0.www;
					    u_xlat2 = texture(_RedChannelTex, vs_TEXCOORD1.xy);
					    u_xlat0.xyz = u_xlat2.xyz * vs_COLOR0.xxx + u_xlat0.xyz;
					    u_xlat2 = texture(unity_Lightmap, vs_TEXCOORD0.xy);
					    u_xlat9 = u_xlat2.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat9);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz;
					    u_xlat1 = texture(_BlobShadowTex, vs_TEXCOORD5.xy);
					    u_xlatb9 = vs_TEXCOORD5.z>=u_xlat1.y;
					    u_xlat9 = (u_xlatb9) ? 2.0 : 1.0;
					    u_xlat4 = u_xlat1.y + (-vs_TEXCOORD5.z);
					    u_xlat9 = abs(u_xlat4) * u_xlat9 + u_xlat9;
					    u_xlat9 = u_xlat9 + -0.5;
					    u_xlat9 = max(u_xlat9, 1.0);
					    u_xlat9 = u_xlat1.x * u_xlat9;
					    u_xlat9 = min(u_xlat9, 1.0);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9) + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD4;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_1[4];
						vec3 _AlphaDepthColor;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _RedChannelTex;
					uniform  sampler2D _GreenChannelTex;
					uniform  sampler2D _BlueChannelTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  float vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat4;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0 = texture(_GreenChannelTex, vs_TEXCOORD2.xy);
					    u_xlat1 = texture(_BlueChannelTex, vs_TEXCOORD3.xy);
					    u_xlat2.xyz = (-vs_COLOR0.xyw) + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat2.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.yyy + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xxx * u_xlat0.xyz;
					    u_xlat1.xyz = _AlphaDepthColor.xyz * u_xlat2.zzz + vs_COLOR0.www;
					    u_xlat2 = texture(_RedChannelTex, vs_TEXCOORD1.xy);
					    u_xlat0.xyz = u_xlat2.xyz * vs_COLOR0.xxx + u_xlat0.xyz;
					    u_xlat2 = texture(unity_Lightmap, vs_TEXCOORD0.xy);
					    u_xlat9 = u_xlat2.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat9);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz;
					    u_xlat1 = texture(_BlobShadowTex, vs_TEXCOORD5.xy);
					    u_xlatb9 = vs_TEXCOORD5.z>=u_xlat1.y;
					    u_xlat9 = (u_xlatb9) ? 2.0 : 1.0;
					    u_xlat4 = u_xlat1.y + (-vs_TEXCOORD5.z);
					    u_xlat9 = abs(u_xlat4) * u_xlat9 + u_xlat9;
					    u_xlat9 = u_xlat9 + -0.5;
					    u_xlat9 = max(u_xlat9, 1.0);
					    u_xlat9 = u_xlat1.x * u_xlat9;
					    u_xlat9 = min(u_xlat9, 1.0);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9) + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD4;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_1[4];
						vec3 _AlphaDepthColor;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _RedChannelTex;
					uniform  sampler2D _GreenChannelTex;
					uniform  sampler2D _BlueChannelTex;
					uniform  sampler2D _BlobShadowTex;
					uniform  sampler2D unity_Lightmap;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  float vs_TEXCOORD4;
					in  vec3 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat4;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0 = texture(_GreenChannelTex, vs_TEXCOORD2.xy);
					    u_xlat1 = texture(_BlueChannelTex, vs_TEXCOORD3.xy);
					    u_xlat2.xyz = (-vs_COLOR0.xyw) + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat2.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.yyy + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xxx * u_xlat0.xyz;
					    u_xlat1.xyz = _AlphaDepthColor.xyz * u_xlat2.zzz + vs_COLOR0.www;
					    u_xlat2 = texture(_RedChannelTex, vs_TEXCOORD1.xy);
					    u_xlat0.xyz = u_xlat2.xyz * vs_COLOR0.xxx + u_xlat0.xyz;
					    u_xlat2 = texture(unity_Lightmap, vs_TEXCOORD0.xy);
					    u_xlat9 = u_xlat2.w * unity_Lightmap_HDR.x;
					    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat9);
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz;
					    u_xlat1 = texture(_BlobShadowTex, vs_TEXCOORD5.xy);
					    u_xlatb9 = vs_TEXCOORD5.z>=u_xlat1.y;
					    u_xlat9 = (u_xlatb9) ? 2.0 : 1.0;
					    u_xlat4 = u_xlat1.y + (-vs_TEXCOORD5.z);
					    u_xlat9 = abs(u_xlat4) * u_xlat9 + u_xlat9;
					    u_xlat9 = u_xlat9 + -0.5;
					    u_xlat9 = max(u_xlat9, 1.0);
					    u_xlat9 = u_xlat1.x * u_xlat9;
					    u_xlat9 = min(u_xlat9, 1.0);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9) + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD4;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
	}
}