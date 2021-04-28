Shader "Cg shader for toon shading" {
	Properties {
		_Color ("Diffuse Color", Vector) = (1,1,1,1)
		_UnlitColor ("Unlit Diffuse Color", Vector) = (0.5,0.5,0.5,1)
		_DiffuseThreshold ("Threshold for Diffuse Colors", Range(0, 1)) = 0.1
		_OutlineColor ("Outline Color", Vector) = (0,0,0,1)
		_LitOutlineThickness ("Lit Outline Thickness", Range(0, 1)) = 0.1
		_UnlitOutlineThickness ("Unlit Outline Thickness", Range(0, 1)) = 0.4
		_SpecColor ("Specular Color", Vector) = (1,1,1,1)
		_Shininess ("Shininess", Float) = 10
	}
	SubShader {
		Pass {
			Tags { "LIGHTMODE" = "FORWARDBASE" }
			GpuProgramID 59218
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
						mat4x4 unity_WorldToObject;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					out vec4 vs_TEXCOORD0;
					out vec3 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    vs_TEXCOORD1.xyz = vec3(u_xlat6) * u_xlat0.xyz;
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
						vec4 _LightColor0;
						vec4 _Color;
						vec4 _UnlitColor;
						float _DiffuseThreshold;
						vec4 _OutlineColor;
						float _LitOutlineThickness;
						float _UnlitOutlineThickness;
						vec4 _SpecColor;
						float _Shininess;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[4];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					in  vec4 vs_TEXCOORD0;
					in  vec3 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec3 u_xlat1;
					bool u_xlatb1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					float u_xlat4;
					bvec2 u_xlatb4;
					float u_xlat8;
					bool u_xlatb8;
					float u_xlat13;
					void main()
					{
					    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * _WorldSpaceLightPos0.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD0.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat13 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat2.x = inversesqrt(u_xlat13);
					    u_xlat13 = sqrt(u_xlat13);
					    u_xlat3.w = float(1.0) / u_xlat13;
					    u_xlat3.xyz = u_xlat1.xyz * u_xlat2.xxx;
					    u_xlatb1 = _WorldSpaceLightPos0.w==0.0;
					    u_xlat0.w = 1.0;
					    u_xlat0 = (bool(u_xlatb1)) ? u_xlat0 : u_xlat3;
					    u_xlat1.x = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
					    u_xlat1.x = inversesqrt(u_xlat1.x);
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD1.xyz;
					    u_xlat13 = dot((-u_xlat0.xyz), u_xlat1.xyz);
					    u_xlat13 = u_xlat13 + u_xlat13;
					    u_xlat2.xyz = u_xlat1.xyz * (-vec3(u_xlat13)) + (-u_xlat0.xyz);
					    u_xlat3.xyz = (-vs_TEXCOORD0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat13 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat13 = inversesqrt(u_xlat13);
					    u_xlat3.xyz = vec3(u_xlat13) * u_xlat3.xyz;
					    u_xlat13 = dot(u_xlat2.xyz, u_xlat3.xyz);
					    u_xlat2.x = dot(u_xlat3.xyz, u_xlat1.xyz);
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat4 = max(u_xlat13, 0.0);
					    u_xlat4 = log2(u_xlat4);
					    u_xlat4 = u_xlat4 * _Shininess;
					    u_xlat4 = exp2(u_xlat4);
					    u_xlat0.y = u_xlat4 * u_xlat0.w;
					    u_xlatb4.xy = lessThan(vec4(0.5, 0.0, 0.0, 0.0), u_xlat0.yxyy).xy;
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlatb4.x = u_xlatb4.x && u_xlatb4.y;
					    u_xlat8 = u_xlat0.x * u_xlat0.w;
					    u_xlatb8 = u_xlat8>=_DiffuseThreshold;
					    u_xlat1.xyz = _LightColor0.xyz * _Color.xyz;
					    u_xlat1.xyz = (bool(u_xlatb8)) ? u_xlat1.xyz : _UnlitColor.xyz;
					    u_xlat8 = (-_UnlitOutlineThickness) + _LitOutlineThickness;
					    u_xlat0.x = u_xlat0.x * u_xlat8 + _UnlitOutlineThickness;
					    u_xlatb0 = u_xlat2.x<u_xlat0.x;
					    u_xlat2.xyz = _LightColor0.xyz * _OutlineColor.xyz;
					    u_xlat0.xzw = (bool(u_xlatb0)) ? u_xlat2.xyz : u_xlat1.xyz;
					    u_xlat1.x = (-_SpecColor.w) + 1.0;
					    u_xlat1.xyz = u_xlat0.xzw * u_xlat1.xxx;
					    u_xlat2.xyz = _LightColor0.xyz * _SpecColor.www;
					    u_xlat1.xyz = u_xlat2.xyz * _SpecColor.xyz + u_xlat1.xyz;
					    SV_Target0.xyz = (u_xlatb4.x) ? u_xlat1.xyz : u_xlat0.xzw;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
		Pass {
			Tags { "LIGHTMODE" = "FORWARDADD" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			GpuProgramID 119283
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
						mat4x4 unity_WorldToObject;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					out vec4 vs_TEXCOORD0;
					out vec3 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat6 = inversesqrt(u_xlat6);
					    vs_TEXCOORD1.xyz = vec3(u_xlat6) * u_xlat0.xyz;
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
						vec4 _LightColor0;
						vec4 unused_0_2[5];
						vec4 _SpecColor;
						float _Shininess;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[4];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[47];
					};
					in  vec4 vs_TEXCOORD0;
					in  vec3 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bvec4 u_xlatb0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					float u_xlat12;
					bool u_xlatb12;
					float u_xlat14;
					void main()
					{
					    u_xlat0.xyz = (-vs_TEXCOORD0.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
					    u_xlat12 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat1.xyz = vec3(u_xlat12) * _WorldSpaceLightPos0.xyz;
					    u_xlat2.xyz = (-vs_TEXCOORD0.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat14 = inversesqrt(u_xlat12);
					    u_xlat12 = sqrt(u_xlat12);
					    u_xlat3.w = float(1.0) / u_xlat12;
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat2.xyz;
					    u_xlatb12 = _WorldSpaceLightPos0.w==0.0;
					    u_xlat1.w = 1.0;
					    u_xlat1 = (bool(u_xlatb12)) ? u_xlat1 : u_xlat3;
					    u_xlat12 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat2.xyz = vec3(u_xlat12) * vs_TEXCOORD1.xyz;
					    u_xlat12 = dot((-u_xlat1.xyz), u_xlat2.xyz);
					    u_xlat12 = u_xlat12 + u_xlat12;
					    u_xlat3.xyz = u_xlat2.xyz * (-vec3(u_xlat12)) + (-u_xlat1.xyz);
					    u_xlat0.w = dot(u_xlat2.xyz, u_xlat1.xyz);
					    u_xlat0.x = dot(u_xlat3.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat0.x = log2(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * _Shininess;
					    u_xlat0.x = exp2(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * u_xlat1.w;
					    u_xlatb0.xw = lessThan(vec4(0.5, 0.0, 0.0, 0.0), u_xlat0.xxxw).xw;
					    u_xlatb0.x = u_xlatb0.x && u_xlatb0.w;
					    u_xlat1.xyz = _LightColor0.xyz * _SpecColor.xyz;
					    u_xlat1.w = _SpecColor.w;
					    SV_Target0 = u_xlatb0.x ? u_xlat1 : vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
			}
		}
	}
	Fallback "Specular"
}