Shader "CpRemix/World/Water" {
	Properties {
		_Color ("Water Color", Vector) = (0,0.5,1,0.7)
		_WavesMap ("Waves r=shore g=diffuse b=spec", 2D) = "white" {}
		_ShoreFoamBrightness ("Shore Foam Brightness", Range(0, 2)) = 1
		_ShoreTile ("Shore Waves Tile", Range(0.05, 299)) = 1
		_ShoreWavesColor ("Shore Waves Color", Vector) = (0,0,1,1)
		_ShoreWavesTimeScale ("Shore Time Scale", Range(0.05, 5)) = 1.2
		_ShoreWavesOpacity ("Shore Waves Opacity", Range(0.05, 1)) = 0.5
		_ShoreWavesUVDirection ("Shore Waves UV direction", Vector) = (0.5,0.5,0,0)
		_ShoreTextureSampleAmnt ("Shore Sample Amount", Range(0.05, 1)) = 0.5
		_DiffuseWavesBounce ("Diffuse Waves Bounce", Range(0, 0.1)) = 0.03
		_DiffuseTile ("Diffuse Waves Tile", Range(0.05, 299)) = 1
		_DiffuseWavesColor ("Diffuse Waves Color", Vector) = (1,1,1,1)
		_DiffuseWavesTimeScale ("Diffuse Time Scale", Range(0.001, 5)) = 0.7
		_DiffuseWavesOpacity ("Diffuse Waves opacity", Range(0.05, 1)) = 0.5
		_DiffuseWavesUVDirection ("Diffuse Waves UV direction", Vector) = (1,0,0,0)
		_SpecWavesBounce ("Spec Waves Bounce", Range(0, 0.1)) = 0
		_SpecTile ("Spec Waaves Tile", Range(0.05, 299)) = 1
		_SpecWavesColor ("Spec Waves Color", Vector) = (1,1,1,1)
		_SpecTimeScale ("Spec Time Scale", Range(0.001, 5)) = 1
		_SpecIntensity ("Specular Intensity", Range(0.05, 5)) = 1
		_SpecUVDirection ("Spec Waves UV direction", Vector) = (1,0,0,0)
		_Shininess ("Specular Shininess", Float) = 5
	}
	SubShader {
		LOD 200
		Tags { "QUEUE" = "Transparent" }
		Pass {
			LOD 200
			Tags { "QUEUE" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			GpuProgramID 27445
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
						vec4 _LightColor0;
						vec4 unused_0_2[2];
						float _Shininess;
						float _SpecIntensity;
						float _ShoreTile;
						vec4 unused_0_6;
						float _ShoreWavesTimeScale;
						vec2 _ShoreWavesUVDirection;
						float _DiffuseWavesBounce;
						float _DiffuseTile;
						vec4 unused_0_11;
						float _DiffuseWavesTimeScale;
						vec2 _DiffuseWavesUVDirection;
						float _SpecWavesBounce;
						float _SpecTile;
						float _SpecTimeScale;
						vec2 _SpecUVDirection;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3;
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_5[4];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec3 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD3;
					out float vs_TEXCOORD6;
					out vec3 vs_TEXCOORD4;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					int u_xlati3;
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
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    u_xlat9 = dot(vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y), vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_DiffuseWavesTimeScale);
					    u_xlat9 = _SinTime.w * _DiffuseWavesBounce + 1.0;
					    u_xlat1.xy = u_xlat1.xy * vec2(u_xlat9) + in_TEXCOORD0.xy;
					    vs_TEXCOORD1.xy = u_xlat1.xy * vec2(vec2(_DiffuseTile, _DiffuseTile));
					    u_xlat9 = dot(vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y), vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_ShoreWavesTimeScale) + in_TEXCOORD0.xy;
					    vs_TEXCOORD0.xy = u_xlat1.xy * vec2(vec2(_ShoreTile, _ShoreTile));
					    u_xlat9 = dot(_SpecUVDirection.xy, _SpecUVDirection.xy);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * _SpecUVDirection.xy;
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTimeScale, _SpecTimeScale)) + in_TEXCOORD0.xy;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTile, _SpecTile));
					    u_xlat9 = _SinTime.w * _SpecWavesBounce + 1.0;
					    vs_TEXCOORD2.xy = vec2(u_xlat9) * u_xlat1.xy;
					    u_xlat9 = (-in_COLOR0.y) + in_COLOR0.x;
					    u_xlat9 = u_xlat9 + (-in_COLOR0.z);
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD5.xy = vec2(u_xlat9) * vec2(1.0, -1.0) + vec2(0.0, 1.0);
					    u_xlat1.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat0.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot((-u_xlat1.xyz), u_xlat2.xyz);
					    u_xlat9 = u_xlat9 + u_xlat9;
					    u_xlat1.xyz = u_xlat2.xyz * (-vec3(u_xlat9)) + (-u_xlat1.xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _Shininess + (-_Shininess);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_SpecIntensity, _SpecIntensity, _SpecIntensity));
					    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.5, 0.5, 0.5));
					    u_xlat9 = max(u_xlat0.y, u_xlat0.x);
					    vs_TEXCOORD6 = max(u_xlat0.z, u_xlat9);
					    vs_TEXCOORD3.xyz = u_xlat0.xyz;
					    u_xlati0 = int((0.0<in_COLOR0.x) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((in_COLOR0.x<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    vs_TEXCOORD4.x = float(u_xlati0);
					    u_xlat0.x = (-_SinTime.w) + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 2.0);
					    vs_TEXCOORD4.y = u_xlat0.x + (-in_COLOR0.x);
					    u_xlat0.x = _CosTime.w + 1.5;
					    u_xlat0.x = (-u_xlat0.x) * 0.5 + 1.0;
					    vs_TEXCOORD4.z = max(u_xlat0.x, 0.0);
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
						vec4 _LightColor0;
						vec4 unused_0_2[2];
						float _Shininess;
						float _SpecIntensity;
						float _ShoreTile;
						vec4 unused_0_6;
						float _ShoreWavesTimeScale;
						vec2 _ShoreWavesUVDirection;
						float _DiffuseWavesBounce;
						float _DiffuseTile;
						vec4 unused_0_11;
						float _DiffuseWavesTimeScale;
						vec2 _DiffuseWavesUVDirection;
						float _SpecWavesBounce;
						float _SpecTile;
						float _SpecTimeScale;
						vec2 _SpecUVDirection;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3;
						vec3 _WorldSpaceCameraPos;
						vec4 _ProjectionParams;
						vec4 unused_1_6[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_5_0;
						vec4 unity_FogParams;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec3 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD3;
					out float vs_TEXCOORD6;
					out vec3 vs_TEXCOORD4;
					out float vs_TEXCOORD7;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					int u_xlati3;
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
					    vs_TEXCOORD7 = u_xlat9 * unity_FogParams.z + unity_FogParams.w;
					    u_xlat9 = dot(vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y), vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_DiffuseWavesTimeScale);
					    u_xlat9 = _SinTime.w * _DiffuseWavesBounce + 1.0;
					    u_xlat1.xy = u_xlat1.xy * vec2(u_xlat9) + in_TEXCOORD0.xy;
					    vs_TEXCOORD1.xy = u_xlat1.xy * vec2(vec2(_DiffuseTile, _DiffuseTile));
					    u_xlat9 = dot(vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y), vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_ShoreWavesTimeScale) + in_TEXCOORD0.xy;
					    vs_TEXCOORD0.xy = u_xlat1.xy * vec2(vec2(_ShoreTile, _ShoreTile));
					    u_xlat9 = dot(_SpecUVDirection.xy, _SpecUVDirection.xy);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * _SpecUVDirection.xy;
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTimeScale, _SpecTimeScale)) + in_TEXCOORD0.xy;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTile, _SpecTile));
					    u_xlat9 = _SinTime.w * _SpecWavesBounce + 1.0;
					    vs_TEXCOORD2.xy = vec2(u_xlat9) * u_xlat1.xy;
					    u_xlat9 = (-in_COLOR0.y) + in_COLOR0.x;
					    u_xlat9 = u_xlat9 + (-in_COLOR0.z);
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD5.xy = vec2(u_xlat9) * vec2(1.0, -1.0) + vec2(0.0, 1.0);
					    u_xlat1.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat0.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot((-u_xlat1.xyz), u_xlat2.xyz);
					    u_xlat9 = u_xlat9 + u_xlat9;
					    u_xlat1.xyz = u_xlat2.xyz * (-vec3(u_xlat9)) + (-u_xlat1.xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _Shininess + (-_Shininess);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_SpecIntensity, _SpecIntensity, _SpecIntensity));
					    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.5, 0.5, 0.5));
					    u_xlat9 = max(u_xlat0.y, u_xlat0.x);
					    vs_TEXCOORD6 = max(u_xlat0.z, u_xlat9);
					    vs_TEXCOORD3.xyz = u_xlat0.xyz;
					    u_xlati0 = int((0.0<in_COLOR0.x) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((in_COLOR0.x<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    vs_TEXCOORD4.x = float(u_xlati0);
					    u_xlat0.x = (-_SinTime.w) + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 2.0);
					    vs_TEXCOORD4.y = u_xlat0.x + (-in_COLOR0.x);
					    u_xlat0.x = _CosTime.w + 1.5;
					    u_xlat0.x = (-u_xlat0.x) * 0.5 + 1.0;
					    vs_TEXCOORD4.z = max(u_xlat0.x, 0.0);
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
						vec4 _LightColor0;
						vec4 unused_0_2[2];
						float _Shininess;
						float _SpecIntensity;
						float _ShoreTile;
						vec4 unused_0_6;
						float _ShoreWavesTimeScale;
						vec2 _ShoreWavesUVDirection;
						float _DiffuseWavesBounce;
						float _DiffuseTile;
						vec4 unused_0_11;
						float _DiffuseWavesTimeScale;
						vec2 _DiffuseWavesUVDirection;
						float _SpecWavesBounce;
						float _SpecTile;
						float _SpecTimeScale;
						vec2 _SpecUVDirection;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3;
						vec3 _WorldSpaceCameraPos;
						vec4 _ProjectionParams;
						vec4 unused_1_6[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_5_0;
						vec4 unity_FogParams;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec3 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD3;
					out float vs_TEXCOORD6;
					out vec3 vs_TEXCOORD4;
					out float vs_TEXCOORD7;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					int u_xlati3;
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
					    vs_TEXCOORD7 = exp2((-u_xlat9));
					    u_xlat9 = dot(vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y), vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_DiffuseWavesTimeScale);
					    u_xlat9 = _SinTime.w * _DiffuseWavesBounce + 1.0;
					    u_xlat1.xy = u_xlat1.xy * vec2(u_xlat9) + in_TEXCOORD0.xy;
					    vs_TEXCOORD1.xy = u_xlat1.xy * vec2(vec2(_DiffuseTile, _DiffuseTile));
					    u_xlat9 = dot(vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y), vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_ShoreWavesTimeScale) + in_TEXCOORD0.xy;
					    vs_TEXCOORD0.xy = u_xlat1.xy * vec2(vec2(_ShoreTile, _ShoreTile));
					    u_xlat9 = dot(_SpecUVDirection.xy, _SpecUVDirection.xy);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * _SpecUVDirection.xy;
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTimeScale, _SpecTimeScale)) + in_TEXCOORD0.xy;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTile, _SpecTile));
					    u_xlat9 = _SinTime.w * _SpecWavesBounce + 1.0;
					    vs_TEXCOORD2.xy = vec2(u_xlat9) * u_xlat1.xy;
					    u_xlat9 = (-in_COLOR0.y) + in_COLOR0.x;
					    u_xlat9 = u_xlat9 + (-in_COLOR0.z);
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD5.xy = vec2(u_xlat9) * vec2(1.0, -1.0) + vec2(0.0, 1.0);
					    u_xlat1.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat0.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot((-u_xlat1.xyz), u_xlat2.xyz);
					    u_xlat9 = u_xlat9 + u_xlat9;
					    u_xlat1.xyz = u_xlat2.xyz * (-vec3(u_xlat9)) + (-u_xlat1.xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _Shininess + (-_Shininess);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_SpecIntensity, _SpecIntensity, _SpecIntensity));
					    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.5, 0.5, 0.5));
					    u_xlat9 = max(u_xlat0.y, u_xlat0.x);
					    vs_TEXCOORD6 = max(u_xlat0.z, u_xlat9);
					    vs_TEXCOORD3.xyz = u_xlat0.xyz;
					    u_xlati0 = int((0.0<in_COLOR0.x) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((in_COLOR0.x<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    vs_TEXCOORD4.x = float(u_xlati0);
					    u_xlat0.x = (-_SinTime.w) + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 2.0);
					    vs_TEXCOORD4.y = u_xlat0.x + (-in_COLOR0.x);
					    u_xlat0.x = _CosTime.w + 1.5;
					    u_xlat0.x = (-u_xlat0.x) * 0.5 + 1.0;
					    vs_TEXCOORD4.z = max(u_xlat0.x, 0.0);
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
						vec4 _LightColor0;
						vec4 unused_0_2[2];
						float _Shininess;
						float _SpecIntensity;
						float _ShoreTile;
						vec4 unused_0_6;
						float _ShoreWavesTimeScale;
						vec2 _ShoreWavesUVDirection;
						float _DiffuseWavesBounce;
						float _DiffuseTile;
						vec4 unused_0_11;
						float _DiffuseWavesTimeScale;
						vec2 _DiffuseWavesUVDirection;
						float _SpecWavesBounce;
						float _SpecTile;
						float _SpecTimeScale;
						vec2 _SpecUVDirection;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 _Time;
						vec4 _SinTime;
						vec4 _CosTime;
						vec4 unused_1_3;
						vec3 _WorldSpaceCameraPos;
						vec4 _ProjectionParams;
						vec4 unused_1_6[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unused_5_0;
						vec4 unity_FogParams;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec3 in_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD3;
					out float vs_TEXCOORD6;
					out vec3 vs_TEXCOORD4;
					out float vs_TEXCOORD7;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					int u_xlati3;
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
					    vs_TEXCOORD7 = exp2(u_xlat9);
					    u_xlat9 = dot(vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y), vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_DiffuseWavesUVDirection.x, _DiffuseWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_DiffuseWavesTimeScale);
					    u_xlat9 = _SinTime.w * _DiffuseWavesBounce + 1.0;
					    u_xlat1.xy = u_xlat1.xy * vec2(u_xlat9) + in_TEXCOORD0.xy;
					    vs_TEXCOORD1.xy = u_xlat1.xy * vec2(vec2(_DiffuseTile, _DiffuseTile));
					    u_xlat9 = dot(vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y), vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y));
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * vec2(_ShoreWavesUVDirection.x, _ShoreWavesUVDirection.y);
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(_ShoreWavesTimeScale) + in_TEXCOORD0.xy;
					    vs_TEXCOORD0.xy = u_xlat1.xy * vec2(vec2(_ShoreTile, _ShoreTile));
					    u_xlat9 = dot(_SpecUVDirection.xy, _SpecUVDirection.xy);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xy = vec2(u_xlat9) * _SpecUVDirection.xy;
					    u_xlat1.xy = u_xlat1.xy * _Time.xx;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTimeScale, _SpecTimeScale)) + in_TEXCOORD0.xy;
					    u_xlat1.xy = u_xlat1.xy * vec2(vec2(_SpecTile, _SpecTile));
					    u_xlat9 = _SinTime.w * _SpecWavesBounce + 1.0;
					    vs_TEXCOORD2.xy = vec2(u_xlat9) * u_xlat1.xy;
					    u_xlat9 = (-in_COLOR0.y) + in_COLOR0.x;
					    u_xlat9 = u_xlat9 + (-in_COLOR0.z);
					    u_xlat9 = max(u_xlat9, 0.0);
					    vs_TEXCOORD5.xy = vec2(u_xlat9) * vec2(1.0, -1.0) + vec2(0.0, 1.0);
					    u_xlat1.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat0.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot((-u_xlat1.xyz), u_xlat2.xyz);
					    u_xlat9 = u_xlat9 + u_xlat9;
					    u_xlat1.xyz = u_xlat2.xyz * (-vec3(u_xlat9)) + (-u_xlat1.xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = u_xlat0.x * _Shininess + (-_Shininess);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_SpecIntensity, _SpecIntensity, _SpecIntensity));
					    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.5, 0.5, 0.5));
					    u_xlat9 = max(u_xlat0.y, u_xlat0.x);
					    vs_TEXCOORD6 = max(u_xlat0.z, u_xlat9);
					    vs_TEXCOORD3.xyz = u_xlat0.xyz;
					    u_xlati0 = int((0.0<in_COLOR0.x) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((in_COLOR0.x<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    vs_TEXCOORD4.x = float(u_xlati0);
					    u_xlat0.x = (-_SinTime.w) + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 2.0);
					    vs_TEXCOORD4.y = u_xlat0.x + (-in_COLOR0.x);
					    u_xlat0.x = _CosTime.w + 1.5;
					    u_xlat0.x = (-u_xlat0.x) * 0.5 + 1.0;
					    vs_TEXCOORD4.z = max(u_xlat0.x, 0.0);
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
						vec4 unused_0_0[4];
						vec4 _Color;
						float _ShoreFoamBrightness;
						vec4 _ShoreWavesColor;
						float _ShoreWavesOpacity;
						float _ShoreTextureSampleAmnt;
						vec4 _DiffuseWavesColor;
						float _DiffuseWavesOpacity;
						vec4 unused_0_8[2];
					};
					uniform  sampler2D _WavesMap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD5;
					in  vec3 vs_TEXCOORD3;
					 vec4 phase0_Input0_3;
					in  float vs_TEXCOORD6;
					in  vec3 vs_TEXCOORD4;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					int u_xlati3;
					vec3 u_xlat4;
					float u_xlat6;
					void main()
					{
					    phase0_Input0_3 = vec4(vs_TEXCOORD3, vs_TEXCOORD6);
					    u_xlati0 = int((0.0<vs_TEXCOORD4.y) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((vs_TEXCOORD4.y<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    u_xlat0.x = float(u_xlati0);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.y;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.z;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.x;
					    u_xlat0.x = u_xlat0.x * _ShoreFoamBrightness + 1.0;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD0.xy);
					    u_xlat3 = u_xlat1.x * _ShoreTextureSampleAmnt + (-_ShoreTextureSampleAmnt);
					    u_xlat6 = u_xlat1.x * _ShoreWavesOpacity;
					    u_xlat6 = u_xlat6 * vs_TEXCOORD5.x;
					    u_xlat6 = u_xlat0.x * u_xlat6;
					    u_xlat3 = u_xlat3 + 1.0;
					    u_xlat0.x = u_xlat0.x * u_xlat3;
					    u_xlat0.x = u_xlat0.x * _ShoreWavesOpacity;
					    u_xlat0.xyw = u_xlat0.xxx * _ShoreWavesColor.xyz;
					    u_xlat0.xyw = u_xlat0.xyw * vs_TEXCOORD5.xxx + _Color.xyz;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD1.xy);
					    u_xlat1.x = u_xlat1.y * _DiffuseWavesOpacity;
					    u_xlat4.xyz = u_xlat1.xxx * _DiffuseWavesColor.xyz;
					    u_xlat0.xyw = u_xlat4.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat2 = texture(_WavesMap, vs_TEXCOORD2.xy);
					    u_xlat2 = u_xlat2.zzzz * phase0_Input0_3;
					    SV_Target0.xyz = u_xlat2.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat0.x = max(u_xlat1.x, u_xlat2.w);
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD5.y;
					    u_xlat0.x = max(u_xlat6, u_xlat0.x);
					    SV_Target0.w = max(u_xlat0.x, _Color.w);
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
						vec4 unused_0_0[4];
						vec4 _Color;
						float _ShoreFoamBrightness;
						vec4 _ShoreWavesColor;
						float _ShoreWavesOpacity;
						float _ShoreTextureSampleAmnt;
						vec4 _DiffuseWavesColor;
						float _DiffuseWavesOpacity;
						vec4 unused_0_8[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _WavesMap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD5;
					in  vec3 vs_TEXCOORD3;
					 vec4 phase0_Input0_3;
					in  float vs_TEXCOORD6;
					in  vec3 vs_TEXCOORD4;
					in  float vs_TEXCOORD7;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					int u_xlati3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    phase0_Input0_3 = vec4(vs_TEXCOORD3, vs_TEXCOORD6);
					    u_xlati0 = int((0.0<vs_TEXCOORD4.y) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((vs_TEXCOORD4.y<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    u_xlat0.x = float(u_xlati0);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.y;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.z;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.x;
					    u_xlat0.x = u_xlat0.x * _ShoreFoamBrightness + 1.0;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD0.xy);
					    u_xlat3 = u_xlat1.x * _ShoreTextureSampleAmnt + (-_ShoreTextureSampleAmnt);
					    u_xlat6 = u_xlat1.x * _ShoreWavesOpacity;
					    u_xlat6 = u_xlat6 * vs_TEXCOORD5.x;
					    u_xlat6 = u_xlat0.x * u_xlat6;
					    u_xlat3 = u_xlat3 + 1.0;
					    u_xlat0.x = u_xlat0.x * u_xlat3;
					    u_xlat0.x = u_xlat0.x * _ShoreWavesOpacity;
					    u_xlat0.xyw = u_xlat0.xxx * _ShoreWavesColor.xyz;
					    u_xlat0.xyw = u_xlat0.xyw * vs_TEXCOORD5.xxx + _Color.xyz;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD1.xy);
					    u_xlat1.x = u_xlat1.y * _DiffuseWavesOpacity;
					    u_xlat4.xyz = u_xlat1.xxx * _DiffuseWavesColor.xyz;
					    u_xlat0.xyw = u_xlat4.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat2 = texture(_WavesMap, vs_TEXCOORD2.xy);
					    u_xlat2 = u_xlat2.zzzz * phase0_Input0_3;
					    u_xlat0.xyw = u_xlat2.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat1.x = max(u_xlat1.x, u_xlat2.w);
					    u_xlat1.x = u_xlat1.x * vs_TEXCOORD5.y;
					    u_xlat6 = max(u_xlat6, u_xlat1.x);
					    SV_Target0.w = max(u_xlat6, _Color.w);
					    u_xlat0.xyz = u_xlat0.xyw + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD7;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_0[4];
						vec4 _Color;
						float _ShoreFoamBrightness;
						vec4 _ShoreWavesColor;
						float _ShoreWavesOpacity;
						float _ShoreTextureSampleAmnt;
						vec4 _DiffuseWavesColor;
						float _DiffuseWavesOpacity;
						vec4 unused_0_8[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _WavesMap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD5;
					in  vec3 vs_TEXCOORD3;
					 vec4 phase0_Input0_3;
					in  float vs_TEXCOORD6;
					in  vec3 vs_TEXCOORD4;
					in  float vs_TEXCOORD7;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					int u_xlati3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    phase0_Input0_3 = vec4(vs_TEXCOORD3, vs_TEXCOORD6);
					    u_xlati0 = int((0.0<vs_TEXCOORD4.y) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((vs_TEXCOORD4.y<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    u_xlat0.x = float(u_xlati0);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.y;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.z;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.x;
					    u_xlat0.x = u_xlat0.x * _ShoreFoamBrightness + 1.0;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD0.xy);
					    u_xlat3 = u_xlat1.x * _ShoreTextureSampleAmnt + (-_ShoreTextureSampleAmnt);
					    u_xlat6 = u_xlat1.x * _ShoreWavesOpacity;
					    u_xlat6 = u_xlat6 * vs_TEXCOORD5.x;
					    u_xlat6 = u_xlat0.x * u_xlat6;
					    u_xlat3 = u_xlat3 + 1.0;
					    u_xlat0.x = u_xlat0.x * u_xlat3;
					    u_xlat0.x = u_xlat0.x * _ShoreWavesOpacity;
					    u_xlat0.xyw = u_xlat0.xxx * _ShoreWavesColor.xyz;
					    u_xlat0.xyw = u_xlat0.xyw * vs_TEXCOORD5.xxx + _Color.xyz;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD1.xy);
					    u_xlat1.x = u_xlat1.y * _DiffuseWavesOpacity;
					    u_xlat4.xyz = u_xlat1.xxx * _DiffuseWavesColor.xyz;
					    u_xlat0.xyw = u_xlat4.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat2 = texture(_WavesMap, vs_TEXCOORD2.xy);
					    u_xlat2 = u_xlat2.zzzz * phase0_Input0_3;
					    u_xlat0.xyw = u_xlat2.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat1.x = max(u_xlat1.x, u_xlat2.w);
					    u_xlat1.x = u_xlat1.x * vs_TEXCOORD5.y;
					    u_xlat6 = max(u_xlat6, u_xlat1.x);
					    SV_Target0.w = max(u_xlat6, _Color.w);
					    u_xlat0.xyz = u_xlat0.xyw + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD7;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
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
						vec4 unused_0_0[4];
						vec4 _Color;
						float _ShoreFoamBrightness;
						vec4 _ShoreWavesColor;
						float _ShoreWavesOpacity;
						float _ShoreTextureSampleAmnt;
						vec4 _DiffuseWavesColor;
						float _DiffuseWavesOpacity;
						vec4 unused_0_8[2];
					};
					layout(std140) uniform UnityFog {
						vec4 unity_FogColor;
						vec4 unused_1_1;
					};
					uniform  sampler2D _WavesMap;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD5;
					in  vec3 vs_TEXCOORD3;
					 vec4 phase0_Input0_3;
					in  float vs_TEXCOORD6;
					in  vec3 vs_TEXCOORD4;
					in  float vs_TEXCOORD7;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat3;
					int u_xlati3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    phase0_Input0_3 = vec4(vs_TEXCOORD3, vs_TEXCOORD6);
					    u_xlati0 = int((0.0<vs_TEXCOORD4.y) ? 0xFFFFFFFFu : uint(0));
					    u_xlati3 = int((vs_TEXCOORD4.y<0.0) ? 0xFFFFFFFFu : uint(0));
					    u_xlati0 = (-u_xlati0) + u_xlati3;
					    u_xlat0.x = float(u_xlati0);
					    u_xlat0.x = u_xlat0.x + 1.0;
					    u_xlat0.x = min(u_xlat0.x, 1.0);
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.y;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.z;
					    u_xlat0.x = u_xlat0.x * vs_TEXCOORD4.x;
					    u_xlat0.x = u_xlat0.x * _ShoreFoamBrightness + 1.0;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD0.xy);
					    u_xlat3 = u_xlat1.x * _ShoreTextureSampleAmnt + (-_ShoreTextureSampleAmnt);
					    u_xlat6 = u_xlat1.x * _ShoreWavesOpacity;
					    u_xlat6 = u_xlat6 * vs_TEXCOORD5.x;
					    u_xlat6 = u_xlat0.x * u_xlat6;
					    u_xlat3 = u_xlat3 + 1.0;
					    u_xlat0.x = u_xlat0.x * u_xlat3;
					    u_xlat0.x = u_xlat0.x * _ShoreWavesOpacity;
					    u_xlat0.xyw = u_xlat0.xxx * _ShoreWavesColor.xyz;
					    u_xlat0.xyw = u_xlat0.xyw * vs_TEXCOORD5.xxx + _Color.xyz;
					    u_xlat1 = texture(_WavesMap, vs_TEXCOORD1.xy);
					    u_xlat1.x = u_xlat1.y * _DiffuseWavesOpacity;
					    u_xlat4.xyz = u_xlat1.xxx * _DiffuseWavesColor.xyz;
					    u_xlat0.xyw = u_xlat4.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat2 = texture(_WavesMap, vs_TEXCOORD2.xy);
					    u_xlat2 = u_xlat2.zzzz * phase0_Input0_3;
					    u_xlat0.xyw = u_xlat2.xyz * vs_TEXCOORD5.yyy + u_xlat0.xyw;
					    u_xlat1.x = max(u_xlat1.x, u_xlat2.w);
					    u_xlat1.x = u_xlat1.x * vs_TEXCOORD5.y;
					    u_xlat6 = max(u_xlat6, u_xlat1.x);
					    SV_Target0.w = max(u_xlat6, _Color.w);
					    u_xlat0.xyz = u_xlat0.xyw + (-unity_FogColor.xyz);
					    u_xlat9 = vs_TEXCOORD7;
					    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
					    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + unity_FogColor.xyz;
					    return;
					}"
				}
			}
		}
	}
}