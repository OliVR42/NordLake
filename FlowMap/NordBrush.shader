// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33232,y:32672,varname:node_3138,prsc:2|emission-1057-OUT,alpha-3799-OUT;n:type:ShaderForge.SFN_Color,id:3693,x:32399,y:32773,ptovrint:False,ptlb:velocityColor,ptin:velocityColor,varname:_node_3693,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3799,x:32803,y:33056,varname:node_3799,prsc:2|A-5395-OUT,B-3693-A;n:type:ShaderForge.SFN_TexCoord,id:2410,x:31979,y:33267,varname:node_2410,prsc:2,uv:0;n:type:ShaderForge.SFN_Distance,id:5964,x:32359,y:33317,varname:node_5964,prsc:2|A-7023-OUT,B-1464-OUT;n:type:ShaderForge.SFN_Vector2,id:1464,x:32127,y:33514,varname:node_1464,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Multiply,id:7023,x:32200,y:33277,varname:node_7023,prsc:2|A-2410-UVOUT,B-1380-OUT;n:type:ShaderForge.SFN_Vector1,id:1380,x:32058,y:33437,varname:node_1380,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:5395,x:32947,y:33241,varname:node_5395,prsc:2|IN-7614-OUT;n:type:ShaderForge.SFN_Clamp01,id:7614,x:32566,y:33353,varname:node_7614,prsc:2|IN-5964-OUT;n:type:ShaderForge.SFN_Code,id:3078,x:30031,y:34065,varname:node_3078,prsc:2,code:IwBpAGYAIAAhAFUATgBJAFQAWQBfAEMATwBMAE8AUgBTAFAAQQBDAEUAXwBHAEEATQBNAEEACgBpAG4AQwAgAD0AIABMAGkAbgBlAGEAcgBUAG8ARwBhAG0AbQBhAFMAcABhAGMAZQAoAGkAbgBDACkAOwANAAoAcgBlAHQAdQByAG4AIABpAG4AQwA7AAoAIwBlAG4AZABpAGYACgA=,output:2,fname:LinearToGamma,width:497,height:266,input:2,input_1_label:inC;n:type:ShaderForge.SFN_Code,id:1036,x:30159,y:34193,varname:node_1036,prsc:2,code:IwBpAGYAIAAhAFUATgBJAFQAWQBfAEMATwBMAE8AUgBTAFAAQQBDAEUAXwBHAEEATQBNAEEACgBpAG4AQwAgAD0AIABMAGkAbgBlAGEAcgBUAG8ARwBhAG0AbQBhAFMAcABhAGMAZQAoAGkAbgBDACkAOwANAAoAcgBlAHQAdQByAG4AIABpAG4AQwA7AAoAIwBlAG4AZABpAGYACgA=,output:2,fname:LinearToGamma,width:497,height:266,input:2,input_1_label:inC;n:type:ShaderForge.SFN_Code,id:1057,x:32707,y:32794,varname:node_1057,prsc:2,code:IwBpAGYAIAAhAFUATgBJAFQAWQBfAEMATwBMAE8AUgBTAFAAQQBDAEUAXwBHAEEATQBNAEEACgBpAG4AQwAgAD0AIABHAGEAbQBtAGEAVABvAEwAaQBuAGUAYQByAFMAcABhAGMAZQAoAGkAbgBDACkAOwANAAoAcgBlAHQAdQByAG4AIABpAG4AQwA7AAoAIwBlAG4AZABpAGYACgA=,output:2,fname:Function_node_1057,width:334,height:241,input:2,input_1_label:inC|A-3693-RGB;pass:END;sub:END;*/

Shader "Shader Forge/NordBrush" {
    Properties {
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 velocityColor;
            float3 Function_node_1057( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = GammaToLinearSpace(inC);
            return inC;
            #endif
            
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float3 emissive = Function_node_1057( velocityColor.rgb );
                float3 finalColor = emissive;
                return fixed4(finalColor,((1.0 - saturate(distance((i.uv0*2.0),float2(1,1))))*velocityColor.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
