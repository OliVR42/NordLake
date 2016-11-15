// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32948,y:32702,varname:node_3138,prsc:2|emission-2658-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32651,y:32996,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9787,x:31675,y:32831,ptovrint:False,ptlb:node_9787,ptin:_node_9787,varname:_node_9787,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Add,id:8862,x:32255,y:32782,varname:node_8862,prsc:2|A-8498-OUT,B-2520-OUT;n:type:ShaderForge.SFN_Reciprocal,id:544,x:32515,y:32581,varname:node_544,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:2658,x:32636,y:32761,varname:node_2658,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8862-OUT;n:type:ShaderForge.SFN_Abs,id:8498,x:32070,y:32652,varname:node_8498,prsc:2|IN-9787-R;n:type:ShaderForge.SFN_Abs,id:2520,x:32070,y:32782,varname:node_2520,prsc:2|IN-9787-G;n:type:ShaderForge.SFN_Subtract,id:3305,x:32419,y:32949,varname:node_3305,prsc:2|A-9787-B,B-8862-OUT;proporder:7241-9787;pass:END;sub:END;*/

Shader "Shader Forge/norma2Height" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_9787 ("node_9787", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _node_9787; uniform float4 _node_9787_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 _node_9787_var = UnpackNormal(tex2D(_node_9787,TRANSFORM_TEX(i.uv0, _node_9787)));
                float node_8862 = (abs(_node_9787_var.r)+abs(_node_9787_var.g));
                float node_2658 = (node_8862*0.5+0.5);
                float3 emissive = float3(node_2658,node_2658,node_2658);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
