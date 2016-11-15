// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33621,y:32814,varname:node_3138,prsc:2|emission-9375-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1124,x:31843,y:32713,varname:node_1124,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5858,x:31817,y:33082,ptovrint:False,ptlb:_WLakeHeight,ptin:_WLakeHeight,varname:_WLakeHeight,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_NormalBlend,id:7314,x:33192,y:34187,varname:node_7314,prsc:2;n:type:ShaderForge.SFN_NormalBlend,id:5487,x:33383,y:34174,varname:node_5487,prsc:2;n:type:ShaderForge.SFN_NormalBlend,id:4688,x:33568,y:34174,varname:node_4688,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3991,x:32682,y:33057,varname:node_3991,prsc:2|IN-1124-Y,IMIN-5858-OUT,IMAX-9869-OUT,OMIN-2387-OUT,OMAX-6455-OUT;n:type:ShaderForge.SFN_Vector1,id:2387,x:32363,y:33428,varname:node_2387,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6455,x:32377,y:33552,varname:node_6455,prsc:2,v1:0;n:type:ShaderForge.SFN_Smoothstep,id:6700,x:33053,y:33266,varname:node_6700,prsc:2|A-1632-OUT,B-2629-OUT,V-3991-OUT;n:type:ShaderForge.SFN_Vector1,id:1632,x:32854,y:33426,varname:node_1632,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2629,x:32854,y:33507,varname:node_2629,prsc:2,v1:0.33;n:type:ShaderForge.SFN_Smoothstep,id:7702,x:33054,y:33544,varname:node_7702,prsc:2|A-2629-OUT,B-5067-OUT,V-3991-OUT;n:type:ShaderForge.SFN_Vector1,id:8204,x:32608,y:33773,varname:node_8204,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5067,x:32854,y:33718,varname:node_5067,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Smoothstep,id:5388,x:33066,y:33735,varname:node_5388,prsc:2|A-5067-OUT,B-3682-OUT,V-3991-OUT;n:type:ShaderForge.SFN_Vector1,id:3682,x:32854,y:33839,varname:node_3682,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:9375,x:33283,y:33518,varname:node_9375,prsc:2|A-6700-OUT,B-7702-OUT,C-5388-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7048,x:31864,y:33431,ptovrint:False,ptlb:_WLakeDepth,ptin:_WLakeDepth,varname:__WLakeDepth,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:4139,x:32336,y:32887,varname:node_4139,prsc:2|A-1124-Y,B-5858-OUT;n:type:ShaderForge.SFN_Subtract,id:9869,x:32246,y:33202,varname:node_9869,prsc:2|A-5858-OUT,B-7048-OUT;pass:END;sub:END;*/

Shader "Shader Forge/DepthRendering" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _WLakeHeight;
            uniform float _WLakeDepth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float node_2629 = 0.33;
                float node_2387 = 1.0;
                float node_3991 = (node_2387 + ( (i.posWorld.g - _WLakeHeight) * (0.0 - node_2387) ) / ((_WLakeHeight-_WLakeDepth) - _WLakeHeight));
                float node_5067 = 0.66;
                float3 emissive = float3(smoothstep( 0.0, node_2629, node_3991 ),smoothstep( node_2629, node_5067, node_3991 ),smoothstep( node_5067, 1.0, node_3991 ));
                float3 finalColor = emissive;
                outDiffuse = half4( 0, 0, 0, 1 );
                outSpecSmoothness = half4(0,0,0,0);
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( float3(smoothstep( 0.0, node_2629, node_3991 ),smoothstep( node_2629, node_5067, node_3991 ),smoothstep( node_5067, 1.0, node_3991 )), 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _WLakeHeight;
            uniform float _WLakeDepth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float node_2629 = 0.33;
                float node_2387 = 1.0;
                float node_3991 = (node_2387 + ( (i.posWorld.g - _WLakeHeight) * (0.0 - node_2387) ) / ((_WLakeHeight-_WLakeDepth) - _WLakeHeight));
                float node_5067 = 0.66;
                float3 emissive = float3(smoothstep( 0.0, node_2629, node_3991 ),smoothstep( node_2629, node_5067, node_3991 ),smoothstep( node_5067, 1.0, node_3991 ));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
