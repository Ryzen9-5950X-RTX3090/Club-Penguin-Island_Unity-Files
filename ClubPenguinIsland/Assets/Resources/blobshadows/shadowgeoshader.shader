Shader "CpRemix/BlobShadows/ShadowGeoShader" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader {
		Pass {
			GpuProgramID 46691
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
						mat4x4 _blobShadowCamVp;
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out float vs_TEXCOORD1;
					out float vs_TEXCOORD2;
					vec4 u_xlat0;
					float u_xlat1;
					void main()
					{
					    u_xlat0 = in_POSITION0.zzzz * _blobShadowCamVp[2];
					    u_xlat0 = _blobShadowCamVp[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = _blobShadowCamVp[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat1 = max(abs(u_xlat0.y), abs(u_xlat0.x));
					    gl_Position = u_xlat0;
					    u_xlat0.x = u_xlat1 + -0.800000012;
					    u_xlat0.x = u_xlat0.x * 5.0;
					    vs_TEXCOORD1 = max(u_xlat0.x, 0.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD2 = in_POSITION0.y;
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
					in  vec2 vs_TEXCOORD0;
					in  float vs_TEXCOORD1;
					in  float vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    SV_Target0.x = u_xlat0.x + vs_TEXCOORD1;
					    SV_Target0.y = vs_TEXCOORD2;
					    SV_Target0.zw = vec2(1.0, 1.0);
					    return;
					}"
				}
			}
		}
	}
}