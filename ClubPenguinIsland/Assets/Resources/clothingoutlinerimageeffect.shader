Shader "Hidden/ClothingOutlinerImageEffect" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_OutlineTex ("Outline", 2D) = "white" {}
		_OutlineColor ("Outline Color", Vector) = (1,1,1,1)
		_OutlineLookups ("Outline Lookups", Range(1, 8)) = 3
		_OutlineLookupDistance ("Outline Lookup Distance", Float) = 0.01
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 33675
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
						vec4 unused_0_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
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
						vec4 _OutlineColor;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _OutlineTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					bvec2 u_xlatb1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					bvec2 u_xlatb9;
					float u_xlat13;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlatb1.xy = lessThan(vec4(0.125, 0.125, 0.0, 0.0), vs_TEXCOORD0.xyxx).xy;
					    u_xlatb9.xy = lessThan(vs_TEXCOORD0.xyxy, vec4(0.875, 0.875, 0.875, 0.875)).xy;
					    u_xlatb1.x = u_xlatb9.x && u_xlatb1.x;
					    u_xlatb1.x = u_xlatb1.y && u_xlatb1.x;
					    u_xlatb1.x = u_xlatb9.y && u_xlatb1.x;
					    if(u_xlatb1.x){
					        u_xlat1 = texture(_OutlineTex, vs_TEXCOORD0.xy);
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(-0.00390625, -0.00390625, -0.00390625, 0.0);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat13 = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat13 * 0.707000017 + u_xlat2.x;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(-0.00390625, 0.00390625, 0.00390625, -0.00390625);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.707000017 + u_xlat13;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.707000017 + u_xlat13;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(0.00390625, 0.0, 0.00390625, 0.00390625);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat13 + u_xlat2.x;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.707000017 + u_xlat13;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(0.0, 0.00390625, 0.0, -0.00390625);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat13 + u_xlat2.x;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat13 + u_xlat2.x;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(-0.01171875, -0.01171875, -0.01171875, 0.0);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.303000003 + u_xlat13;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.5 + u_xlat13;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(-0.01171875, 0.01171875, 0.01171875, -0.01171875);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.303000003 + u_xlat13;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.303000003 + u_xlat13;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(0.01171875, 0.0, 0.01171875, 0.01171875);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.5 + u_xlat13;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat2.x = dot(abs(u_xlat2.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.303000003 + u_xlat13;
					        u_xlat2 = vs_TEXCOORD0.xyxy + vec4(0.0, 0.01171875, 0.0, -0.01171875);
					        u_xlat3 = texture(_OutlineTex, u_xlat2.xy);
					        u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat3.xyz;
					        u_xlat2.x = dot(abs(u_xlat3.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat13 = u_xlat2.x * 0.5 + u_xlat13;
					        u_xlat2 = texture(_OutlineTex, u_xlat2.zw);
					        u_xlat1.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
					        u_xlat1.x = dot(abs(u_xlat1.xyz), vec3(0.212599993, 0.715200007, 0.0722000003));
					        u_xlat1.x = u_xlat1.x * 0.5 + u_xlat13;
					        u_xlat1.x = u_xlat1.x * 0.166666672;
					    } else {
					        u_xlat1.x = 0.0;
					    }
					    SV_Target0 = _OutlineColor * u_xlat1.xxxx + u_xlat0;
					    return;
					}"
				}
			}
		}
	}
}