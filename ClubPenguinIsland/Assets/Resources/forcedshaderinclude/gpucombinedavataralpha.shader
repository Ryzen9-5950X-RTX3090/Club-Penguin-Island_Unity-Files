Shader "CpRemix/GPU Combined Avatar Alpha" {
	Properties {
		_MainTex ("Diffuse Texture", 2D) = "white" {}
		_Alpha ("Alpha", Float) = 0
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			GpuProgramID 52107
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
						vec4 unused_0_2;
						vec4 bonepos[48];
						vec4 unused_0_4[47];
						vec4 bonequat[48];
						vec4 unused_0_6[47];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_2_1[16];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_3[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec2 in_TEXCOORD0;
					in  vec3 in_COLOR0;
					in  vec4 in_TANGENT0;
					out vec2 vs_TEXCOORD0;
					out vec3 vs_TEXCOORD1;
					out vec3 vs_COLOR0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					ivec4 u_xlati1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat15;
					int u_xlati15;
					void main()
					{
					    u_xlat0 = fract(in_TANGENT0);
					    u_xlat0 = u_xlat0 + u_xlat0;
					    u_xlati1 = ivec4(in_TANGENT0);
					    u_xlat2.xyz = in_POSITION0.zxy * bonequat[u_xlati1.y].xyz;
					    u_xlat2.xyz = bonequat[u_xlati1.y].zxy * in_POSITION0.xyz + (-u_xlat2.xyz);
					    u_xlat2.xyz = u_xlat2.xyz + u_xlat2.xyz;
					    u_xlat3.xyz = u_xlat2.xyz * bonequat[u_xlati1.y].zxy;
					    u_xlat3.xyz = bonequat[u_xlati1.y].yzx * u_xlat2.yzx + (-u_xlat3.xyz);
					    u_xlat2.xyz = bonequat[u_xlati1.y].www * u_xlat2.zxy + in_POSITION0.xyz;
					    u_xlat2.xyz = u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xyz = u_xlat2.xyz + bonepos[u_xlati1.y].xyz;
					    u_xlat2.xyz = u_xlat0.yyy * u_xlat2.xyz;
					    u_xlat3.xyz = in_POSITION0.zxy * bonequat[u_xlati1.x].xyz;
					    u_xlat3.xyz = bonequat[u_xlati1.x].zxy * in_POSITION0.xyz + (-u_xlat3.xyz);
					    u_xlat3.xyz = u_xlat3.xyz + u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat3.xyz * bonequat[u_xlati1.x].zxy;
					    u_xlat4.xyz = bonequat[u_xlati1.x].yzx * u_xlat3.yzx + (-u_xlat4.xyz);
					    u_xlat3.xyz = bonequat[u_xlati1.x].www * u_xlat3.zxy + in_POSITION0.xyz;
					    u_xlat3.xyz = u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz + bonepos[u_xlati1.x].xyz;
					    u_xlat2.xyz = u_xlat3.xyz * u_xlat0.xxx + u_xlat2.xyz;
					    u_xlat3.xyz = in_POSITION0.zxy * bonequat[u_xlati1.z].xyz;
					    u_xlat3.xyz = bonequat[u_xlati1.z].zxy * in_POSITION0.xyz + (-u_xlat3.xyz);
					    u_xlat3.xyz = u_xlat3.xyz + u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat3.xyz * bonequat[u_xlati1.z].zxy;
					    u_xlat4.xyz = bonequat[u_xlati1.z].yzx * u_xlat3.yzx + (-u_xlat4.xyz);
					    u_xlat3.xyz = bonequat[u_xlati1.z].www * u_xlat3.zxy + in_POSITION0.xyz;
					    u_xlat3.xyz = u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat1.xyz = u_xlat3.xyz + bonepos[u_xlati1.z].xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.zzz + u_xlat2.xyz;
					    u_xlat1.xyz = in_POSITION0.zxy * bonequat[u_xlati1.w].xyz;
					    u_xlat1.xyz = bonequat[u_xlati1.w].zxy * in_POSITION0.xyz + (-u_xlat1.xyz);
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat1.xyz;
					    u_xlat2.xyz = u_xlat1.xyz * bonequat[u_xlati1.w].zxy;
					    u_xlat2.xyz = bonequat[u_xlati1.w].yzx * u_xlat1.yzx + (-u_xlat2.xyz);
					    u_xlat1.xyz = bonequat[u_xlati1.w].www * u_xlat1.zxy + in_POSITION0.xyz;
					    u_xlat1.xyz = u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat1.xyz = u_xlat1.xyz + bonepos[u_xlati1.w].xyz;
					    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.www + u_xlat0.xyz;
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat0.xyz = (-u_xlat0.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    gl_Position = u_xlat1 + unity_MatrixVP[3];
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    u_xlati15 = int(in_TANGENT0.x);
					    u_xlat1.xyz = in_NORMAL0.zxy * bonequat[u_xlati15].xyz;
					    u_xlat1.xyz = bonequat[u_xlati15].zxy * in_NORMAL0.xyz + (-u_xlat1.xyz);
					    u_xlat1.xyz = u_xlat1.xyz + u_xlat1.xyz;
					    u_xlat2.xyz = u_xlat1.xyz * bonequat[u_xlati15].zxy;
					    u_xlat2.xyz = bonequat[u_xlati15].yzx * u_xlat1.yzx + (-u_xlat2.xyz);
					    u_xlat1.xyz = bonequat[u_xlati15].www * u_xlat1.zxy + in_NORMAL0.xyz;
					    u_xlat1.xyz = u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat15 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat1.xyz = vec3(u_xlat15) * u_xlat1.xyz;
					    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat0.x = max(u_xlat0.x, 0.0);
					    u_xlat5.xyz = u_xlat0.xxx * _LightColor0.xyz;
					    u_xlat0.x = u_xlat0.x + 0.5;
					    u_xlat0.x = u_xlat0.x * 0.600000024;
					    u_xlat1.xyz = glstate_lightmodel_ambient.xyz * vec3(0.899999976, 0.899999976, 0.899999976);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(0.75, 0.75, 0.75) + u_xlat1.xyz;
					    vs_TEXCOORD1.xyz = max(u_xlat0.xxx, u_xlat5.xyz);
					    vs_COLOR0.xyz = in_COLOR0.xyz;
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
						float _Alpha;
						vec4 unused_0_2[96];
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD0;
					in  vec3 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec3 u_xlat1;
					bool u_xlatb1;
					float u_xlat3;
					float u_xlat6;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat6 = u_xlat0.w * 2.0 + -1.0;
					    u_xlatb1 = u_xlat6>=0.0;
					    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
					    u_xlat3 = u_xlat6 * u_xlat1.x;
					    u_xlat6 = (-u_xlat6) * u_xlat1.x + 1.0;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(u_xlat3);
					    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD1.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat6) + u_xlat1.xyz;
					    SV_Target0.w = _Alpha;
					    return;
					}"
				}
			}
		}
	}
}