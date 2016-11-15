// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:34364,y:33550,varname:node_3138,prsc:2|emission-3450-OUT;n:type:ShaderForge.SFN_Tex2d,id:6325,x:29879,y:34077,ptovrint:False,ptlb:FlowMap,ptin:_FlowMap,varname:_FlowMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ff5f9d29db4c9eb4da2c653f576eb55b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:751,x:31045,y:34086,varname:node_751,prsc:2|A-3281-G,B-3281-R;n:type:ShaderForge.SFN_Multiply,id:1889,x:31283,y:34075,varname:node_1889,prsc:2|A-751-OUT,B-989-OUT;n:type:ShaderForge.SFN_Vector1,id:989,x:31080,y:34274,varname:node_989,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:8282,x:31575,y:34090,varname:node_8282,prsc:2|A-1889-OUT,B-1390-OUT;n:type:ShaderForge.SFN_Vector1,id:1390,x:31362,y:34262,varname:node_1390,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:831,x:31857,y:34111,cmnt:flowVector,varname:node_831,prsc:2|A-8282-OUT,B-4947-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4947,x:31648,y:34374,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:_intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:2810,x:31652,y:34629,varname:node_2810,prsc:2;n:type:ShaderForge.SFN_Multiply,id:308,x:31877,y:34629,cmnt:timeScale,varname:node_308,prsc:2|A-2810-TSL,B-3262-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3262,x:31713,y:34843,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Frac,id:7090,x:32108,y:34522,cmnt:phaseX,varname:node_7090,prsc:2|IN-308-OUT;n:type:ShaderForge.SFN_Add,id:2490,x:32108,y:34770,varname:node_2490,prsc:2|A-308-OUT,B-5297-OUT;n:type:ShaderForge.SFN_Frac,id:5163,x:32253,y:34660,cmnt:phasey,varname:node_5163,prsc:2|IN-2490-OUT;n:type:ShaderForge.SFN_Vector1,id:5297,x:31898,y:34867,varname:node_5297,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:8666,x:32234,y:33912,varname:node_8666,prsc:2,uv:0;n:type:ShaderForge.SFN_Subtract,id:2093,x:32611,y:33958,cmnt:UV1,varname:node_2093,prsc:0|A-8666-UVOUT,B-7333-OUT;n:type:ShaderForge.SFN_Multiply,id:7333,x:32218,y:34147,varname:node_7333,prsc:2|A-831-OUT,B-4444-OUT;n:type:ShaderForge.SFN_Append,id:4444,x:32520,y:34420,varname:node_4444,prsc:2|A-7090-OUT,B-7090-OUT;n:type:ShaderForge.SFN_Append,id:1485,x:32548,y:34677,varname:node_1485,prsc:2|A-5163-OUT,B-5163-OUT;n:type:ShaderForge.SFN_Multiply,id:3863,x:32218,y:34344,varname:node_3863,prsc:2|A-831-OUT,B-1485-OUT;n:type:ShaderForge.SFN_Subtract,id:8397,x:32651,y:34167,cmnt:UV2,varname:node_8397,prsc:0|A-8666-UVOUT,B-3863-OUT;n:type:ShaderForge.SFN_Abs,id:2387,x:32682,y:33691,varname:node_2387,prsc:2|IN-4972-OUT;n:type:ShaderForge.SFN_Vector1,id:6792,x:32291,y:33624,varname:node_6792,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:4972,x:32492,y:33691,varname:node_4972,prsc:2|A-6792-OUT,B-7090-OUT;n:type:ShaderForge.SFN_Divide,id:2310,x:32967,y:33649,cmnt:interp,varname:node_2310,prsc:2|A-2387-OUT,B-6792-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1061,x:32913,y:33418,ptovrint:False,ptlb:node_1061,ptin:_node_1061,varname:_node_1061,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9429,x:33338,y:33626,cmnt:c1,varname:_node_9429,prsc:2,ntxv:0,isnm:False|UVIN-2093-OUT,TEX-1061-TEX;n:type:ShaderForge.SFN_Tex2d,id:9247,x:33314,y:33902,cmnt:c2,varname:_node_3036,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-1061-TEX;n:type:ShaderForge.SFN_Lerp,id:3450,x:33627,y:33805,varname:node_3450,prsc:2|A-9429-RGB,B-9247-RGB,T-2310-OUT;n:type:ShaderForge.SFN_Code,id:7103,x:30147,y:34077,varname:node_7103,prsc:2,code:IwBpAGYAIAAhAFUATgBJAFQAWQBfAEMATwBMAE8AUgBTAFAAQQBDAEUAXwBHAEEATQBNAEEACgBpAG4AQwAgAD0AIABMAGkAbgBlAGEAcgBUAG8ARwBhAG0AbQBhAFMAcABhAGMAZQAoAGkAbgBDACkAOwANAAoAcgBlAHQAdQByAG4AIABpAG4AQwA7AAoAIwBlAG4AZABpAGYACgA=,output:2,fname:LinearToGamma,width:497,height:266,input:2,input_1_label:inC|A-6325-RGB;n:type:ShaderForge.SFN_ComponentMask,id:3281,x:30762,y:34075,varname:node_3281,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7103-OUT;proporder:6325-4947-3262-1061;pass:END;sub:END;*/

Shader "Shader Forge/flowmap" {
    Properties {
        _FlowMap ("FlowMap", 2D) = "white" {}
        _intensity ("intensity", Float ) = 1
        _speed ("speed", Float ) = 0
        _node_1061 ("node_1061", 2D) = "white" {}
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
            uniform float4 _TimeEditor;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            uniform float _intensity;
            uniform float _speed;
            uniform sampler2D _node_1061; uniform float4 _node_1061_ST;
            float3 LinearToGamma( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = LinearToGammaSpace(inC);
            return inC;
            #endif
            
            }
            
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
                float4 _FlowMap_var = tex2D(_FlowMap,TRANSFORM_TEX(i.uv0, _FlowMap));
                float2 node_3281 = LinearToGamma( _FlowMap_var.rgb ).rg;
                float2 node_831 = (((float2(node_3281.g,node_3281.r)*2.0)-1.0)*_intensity); // flowVector
                float4 node_2810 = _Time + _TimeEditor;
                float node_308 = (node_2810.r*_speed); // timeScale
                float node_7090 = frac(node_308); // phaseX
                fixed2 node_2093 = (i.uv0-(node_831*float2(node_7090,node_7090))); // UV1
                float4 _node_9429 = tex2D(_node_1061,TRANSFORM_TEX(node_2093, _node_1061)); // c1
                float node_5163 = frac((node_308+0.5)); // phasey
                fixed2 node_8397 = (i.uv0-(node_831*float2(node_5163,node_5163))); // UV2
                float4 _node_3036 = tex2D(_node_1061,TRANSFORM_TEX(node_8397, _node_1061)); // c2
                float node_6792 = 0.5;
                float3 emissive = lerp(_node_9429.rgb,_node_3036.rgb,(abs((node_6792-node_7090))/node_6792));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
