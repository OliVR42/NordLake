// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:20,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:1,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:37301,y:32464,varname:node_2865,prsc:2|diff-83-OUT,spec-5102-OUT,gloss-2017-OUT,normal-4888-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:31717,y:31549,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31404,y:31703,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31400,y:31377,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3463-UVOUT,MIP-4890-OUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31251,y:34667,varname:_BumpMap2,prsc:2,ntxv:3,isnm:True|UVIN-9935-OUT,TEX-1173-TEX;n:type:ShaderForge.SFN_Slider,id:358,x:33796,y:32835,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:33372,y:33131,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5.634464,max:10;n:type:ShaderForge.SFN_Parallax,id:3463,x:30888,y:31105,varname:node_3463,prsc:2|UVIN-2953-OUT,HEI-9226-OUT,DEP-3141-OUT,REF-4958-OUT;n:type:ShaderForge.SFN_Tex2d,id:9470,x:28691,y:32271,ptovrint:False,ptlb:DepthMap,ptin:_DepthMap,varname:_DepthMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8542-OUT,MIP-2360-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9226,x:30429,y:31609,ptovrint:False,ptlb:HeightDepth,ptin:_HeightDepth,varname:_HeightDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:1014,x:32926,y:34763,varname:node_1014,prsc:2|A-1133-OUT,B-1507-OUT,T-1901-OUT;n:type:ShaderForge.SFN_Slider,id:3605,x:32047,y:34578,ptovrint:False,ptlb:WaveNormalStrenght,ptin:_WaveNormalStrenght,varname:_WaveNormalStrenght,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8847271,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:1173,x:30930,y:34830,ptovrint:True,ptlb:WaveBump,ptin:_BumpMap,varname:_BumpMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1434,x:31251,y:34855,varname:_node_591,prsc:2,ntxv:3,isnm:True|UVIN-7747-OUT,TEX-1173-TEX;n:type:ShaderForge.SFN_NormalBlend,id:9697,x:31733,y:34925,varname:node_9697,prsc:2|BSE-5964-RGB,DTL-1434-RGB;n:type:ShaderForge.SFN_Add,id:7866,x:30491,y:31189,varname:node_7866,prsc:2|A-8609-OUT,B-7634-OUT;n:type:ShaderForge.SFN_Multiply,id:3616,x:30645,y:31796,varname:node_3616,prsc:2|A-5964-R,B-8861-OUT;n:type:ShaderForge.SFN_Slider,id:8861,x:30272,y:31845,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:_Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.0221952,max:500;n:type:ShaderForge.SFN_Multiply,id:2120,x:34209,y:32842,varname:node_2120,prsc:2|A-358-OUT,B-4329-OUT;n:type:ShaderForge.SFN_OneMinus,id:3221,x:30906,y:32676,varname:node_3221,prsc:2|IN-8423-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4754,x:29216,y:32718,ptovrint:False,ptlb:InternalsTerrainHeight,ptin:_InternalsTerrainHeight,varname:_InternalsTerrainHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6.82;n:type:ShaderForge.SFN_Multiply,id:4312,x:29445,y:32656,cmnt:StartRemapDepth,varname:node_4312,prsc:2|A-6191-OUT,B-4754-OUT;n:type:ShaderForge.SFN_Slider,id:9808,x:27528,y:34832,ptovrint:False,ptlb:GlobalWaveSpeed,ptin:_GlobalWaveSpeed,varname:_GlobalWaveSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:2872,x:28121,y:34882,varname:node_2872,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7677,x:28362,y:34828,varname:node_7677,prsc:2|A-9808-OUT,B-2872-T;n:type:ShaderForge.SFN_Slider,id:2360,x:28293,y:32311,ptovrint:False,ptlb:ShoreSoftness,ptin:_ShoreSoftness,varname:_ShoreSoftness,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:12;n:type:ShaderForge.SFN_Tex2d,id:7353,x:31369,y:32106,ptovrint:False,ptlb:ShoreTex,ptin:_ShoreTex,varname:_ShoreTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6960-OUT,MIP-4890-OUT;n:type:ShaderForge.SFN_Clamp01,id:4721,x:31493,y:32738,cmnt:MAterialsMask,varname:node_4721,prsc:2|IN-3221-OUT;n:type:ShaderForge.SFN_Tex2d,id:3814,x:33444,y:33835,ptovrint:False,ptlb:ShoreNormal,ptin:_ShoreNormal,varname:_ShoreNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-8002-OUT;n:type:ShaderForge.SFN_Set,id:8987,x:29980,y:33578,varname:uVS,prsc:2|IN-8876-UVOUT;n:type:ShaderForge.SFN_Get,id:8609,x:30234,y:31148,varname:node_8609,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_Get,id:2165,x:30056,y:34656,varname:node_2165,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:596,x:27957,y:33796,varname:node_596,prsc:2;n:type:ShaderForge.SFN_Append,id:4610,x:28218,y:33818,varname:node_4610,prsc:2|A-596-X,B-596-Z;n:type:ShaderForge.SFN_Set,id:7315,x:29059,y:33860,varname:WorldMapping,prsc:0|IN-2287-OUT;n:type:ShaderForge.SFN_Multiply,id:2287,x:28794,y:33872,varname:node_2287,prsc:2|A-4610-OUT,B-5812-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5812,x:28626,y:34054,ptovrint:False,ptlb:WorldMappinScale,ptin:_WorldMappinScale,varname:_WorldMappinScale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.21;n:type:ShaderForge.SFN_Get,id:8002,x:33070,y:33853,varname:node_8002,prsc:2|IN-5633-OUT;n:type:ShaderForge.SFN_Add,id:9935,x:30905,y:34634,varname:node_9935,prsc:2|A-2165-OUT,B-7677-OUT;n:type:ShaderForge.SFN_Get,id:7602,x:30464,y:34712,varname:node_7602,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_Add,id:7747,x:30736,y:34719,varname:node_7747,prsc:1|A-7602-OUT,B-7408-OUT;n:type:ShaderForge.SFN_Multiply,id:7408,x:30396,y:34399,varname:node_7408,prsc:2|A-3824-OUT,B-7677-OUT;n:type:ShaderForge.SFN_Vector2,id:3824,x:30158,y:34399,varname:node_3824,prsc:2,v1:-0.6,v2:0.6;n:type:ShaderForge.SFN_Multiply,id:9583,x:33797,y:33126,varname:node_9583,prsc:2|A-1813-OUT,B-8396-OUT,C-7415-OUT;n:type:ShaderForge.SFN_Get,id:8542,x:28429,y:32162,varname:node_8542,prsc:2|IN-9237-OUT;n:type:ShaderForge.SFN_Multiply,id:2732,x:35040,y:34798,varname:node_2732,prsc:2|A-2827-OUT,B-4282-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4282,x:34786,y:34886,ptovrint:False,ptlb:SubsurfaceBlur,ptin:_SubsurfaceBlur,varname:_SubsurfaceBlur,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-15.22;n:type:ShaderForge.SFN_Color,id:3168,x:35643,y:34637,ptovrint:False,ptlb:SubsurfaceScatter,ptin:_SubsurfaceScatter,varname:_SubsurfaceScatter,prsc:1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2509804,c2:0.2509804,c3:0.2509804,c4:1;n:type:ShaderForge.SFN_Clamp01,id:3556,x:35432,y:34860,varname:node_3556,prsc:2|IN-4897-OUT;n:type:ShaderForge.SFN_Multiply,id:8948,x:35927,y:34852,varname:node_8948,prsc:2|A-3168-RGB,B-1954-OUT;n:type:ShaderForge.SFN_Add,id:4897,x:35227,y:34860,varname:node_4897,prsc:2|A-2732-OUT,B-9709-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9709,x:34947,y:34913,ptovrint:False,ptlb:SubsurfaceFresnel,ptin:_SubsurfaceFresnel,varname:_SubsurfaceFresnel,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:7.7;n:type:ShaderForge.SFN_Fresnel,id:7415,x:35376,y:33373,varname:node_7415,prsc:2|NRM-4157-OUT,EXP-1889-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1889,x:34935,y:33508,ptovrint:False,ptlb:FresnelDisturbanceFactor,ptin:_FresnelDisturbanceFactor,varname:_FresnelDisturbanceFactor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.59;n:type:ShaderForge.SFN_NormalVector,id:4157,x:35068,y:33356,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:962,x:34737,y:32166,varname:node_962,prsc:2|A-7473-OUT,B-1782-OUT;n:type:ShaderForge.SFN_Multiply,id:3959,x:33722,y:32123,varname:node_3959,prsc:2|A-4390-OUT,B-9543-OUT;n:type:ShaderForge.SFN_OneMinus,id:9800,x:33972,y:32184,varname:node_9800,prsc:2|IN-3959-OUT;n:type:ShaderForge.SFN_Tex2d,id:3842,x:34381,y:32493,ptovrint:False,ptlb:windNoiseTex,ptin:_windNoiseTex,varname:_windNoiseTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8049-UVOUT;n:type:ShaderForge.SFN_Subtract,id:1782,x:34500,y:32184,varname:node_1782,prsc:2|A-3867-OUT,B-3842-R;n:type:ShaderForge.SFN_Relay,id:9772,x:35181,y:32882,varname:node_9772,prsc:2|IN-8433-OUT;n:type:ShaderForge.SFN_Relay,id:2847,x:36027,y:31654,varname:node_2847,prsc:2|IN-2793-OUT;n:type:ShaderForge.SFN_Clamp01,id:83,x:36606,y:31687,varname:node_83,prsc:2|IN-7255-OUT;n:type:ShaderForge.SFN_Clamp01,id:5102,x:35448,y:32812,varname:node_5102,prsc:2|IN-9772-OUT;n:type:ShaderForge.SFN_Clamp,id:3867,x:34245,y:32259,varname:node_3867,prsc:2|IN-9800-OUT,MIN-8666-OUT,MAX-8871-OUT;n:type:ShaderForge.SFN_Vector1,id:8666,x:33860,y:32315,varname:node_8666,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8871,x:33788,y:32416,varname:node_8871,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Panner,id:8049,x:34089,y:32543,varname:node_8049,prsc:2,spu:-0.001,spv:0.001|UVIN-9049-OUT;n:type:ShaderForge.SFN_Get,id:9049,x:33717,y:32530,varname:node_9049,prsc:2|IN-8987-OUT;n:type:ShaderForge.SFN_Relay,id:2163,x:32155,y:34364,varname:node_2163,prsc:2|IN-3842-R;n:type:ShaderForge.SFN_Subtract,id:1901,x:32665,y:34611,varname:node_1901,prsc:2|A-3605-OUT,B-2416-OUT;n:type:ShaderForge.SFN_Multiply,id:8175,x:32274,y:34364,varname:node_8175,prsc:2|A-2163-OUT,B-6260-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6260,x:32017,y:34444,ptovrint:False,ptlb:WindZoneDisturbance,ptin:_WindZoneDisturbance,varname:_WindZoneDisturbance,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2.06;n:type:ShaderForge.SFN_Power,id:2416,x:32472,y:34643,varname:node_2416,prsc:2|VAL-8175-OUT,EXP-7501-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7501,x:32239,y:34667,ptovrint:False,ptlb:WindZone_Power,ptin:_WindZone_Power,varname:_WindZone_Power,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.96;n:type:ShaderForge.SFN_Vector3,id:1507,x:32455,y:34878,varname:node_1507,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Clamp01,id:7473,x:34330,y:33044,varname:node_7473,prsc:2|IN-9583-OUT;n:type:ShaderForge.SFN_Tex2d,id:9396,x:35131,y:32236,ptovrint:False,ptlb:ShoreGloss,ptin:_ShoreGloss,varname:_ShoreGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3535-OUT;n:type:ShaderForge.SFN_Multiply,id:1540,x:35410,y:32089,varname:node_1540,prsc:2|A-9396-R,B-24-OUT;n:type:ShaderForge.SFN_Get,id:3535,x:34886,y:32342,varname:node_3535,prsc:2|IN-5633-OUT;n:type:ShaderForge.SFN_Subtract,id:6962,x:34991,y:32003,varname:node_6962,prsc:2|A-2552-OUT,B-962-OUT;n:type:ShaderForge.SFN_Add,id:6018,x:34464,y:31995,varname:node_6018,prsc:2|A-226-OUT,B-805-OUT;n:type:ShaderForge.SFN_Multiply,id:226,x:34165,y:31769,varname:node_226,prsc:2|A-4390-OUT,B-9977-OUT;n:type:ShaderForge.SFN_OneMinus,id:2552,x:34716,y:32019,varname:node_2552,prsc:2|IN-6018-OUT;n:type:ShaderForge.SFN_Set,id:833,x:31673,y:32774,varname:MaterialsMask,prsc:2|IN-4721-OUT;n:type:ShaderForge.SFN_Get,id:204,x:32320,y:31497,varname:node_204,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Get,id:4582,x:35977,y:32382,varname:node_4582,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Get,id:4329,x:33994,y:32914,varname:node_4329,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Get,id:8396,x:33545,y:33017,varname:node_8396,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Get,id:3078,x:34392,y:33528,varname:node_3078,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_OneMinus,id:1954,x:35620,y:34860,varname:node_1954,prsc:2|IN-3556-OUT;n:type:ShaderForge.SFN_Add,id:9044,x:28874,y:32288,varname:node_9044,prsc:2|A-9470-R,B-9470-G,C-9470-B,D-2172-OUT;n:type:ShaderForge.SFN_Relay,id:6191,x:29646,y:32462,cmnt:DecompressedDepth,varname:node_6191,prsc:2|IN-5095-OUT;n:type:ShaderForge.SFN_Divide,id:6035,x:29053,y:32288,varname:node_6035,prsc:2|A-9044-OUT,B-7257-OUT;n:type:ShaderForge.SFN_Vector1,id:7257,x:28861,y:32437,varname:node_7257,prsc:2,v1:4;n:type:ShaderForge.SFN_Smoothstep,id:8423,x:30538,y:32612,varname:node_8423,prsc:2|A-5815-OUT,B-6258-OUT,V-7781-OUT;n:type:ShaderForge.SFN_Slider,id:8923,x:29295,y:33113,ptovrint:False,ptlb:ShoreTranz,ptin:_ShoreTranz,varname:_ShoreTranz,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_ValueProperty,id:5815,x:29355,y:32883,ptovrint:False,ptlb:WaterHeight,ptin:_WaterHeight,varname:_WaterHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Add,id:6258,x:29742,y:32874,varname:node_6258,prsc:2|A-5815-OUT,B-8923-OUT;n:type:ShaderForge.SFN_Lerp,id:2793,x:32502,y:31649,cmnt:DiffuseSum,varname:node_2793,prsc:2|A-7353-RGB,B-5247-OUT,T-204-OUT;n:type:ShaderForge.SFN_Smoothstep,id:7809,x:30450,y:33143,varname:node_7809,prsc:2|A-4147-OUT,B-4113-OUT,V-4312-OUT;n:type:ShaderForge.SFN_Slider,id:220,x:29819,y:33228,ptovrint:False,ptlb:WetzoneTranz,ptin:_WetzoneTranz,varname:_WetzoneTranz,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_ValueProperty,id:4147,x:29868,y:33106,ptovrint:False,ptlb:WetHeight_copy,ptin:_WetHeight_copy,varname:_WetHeight_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Add,id:4113,x:30186,y:33210,varname:node_4113,prsc:2|A-4147-OUT,B-220-OUT;n:type:ShaderForge.SFN_Set,id:6236,x:31283,y:33079,varname:WeetZoneMask,prsc:2|IN-2737-OUT;n:type:ShaderForge.SFN_Lerp,id:4545,x:33881,y:33824,varname:node_4545,prsc:2|A-3814-RGB,B-9521-OUT,T-9275-OUT;n:type:ShaderForge.SFN_Get,id:9514,x:33558,y:34156,varname:node_9514,prsc:2|IN-6236-OUT;n:type:ShaderForge.SFN_Vector3,id:9521,x:33558,y:33969,varname:node_9521,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_OneMinus,id:2737,x:30734,y:33143,varname:node_2737,prsc:2|IN-7809-OUT;n:type:ShaderForge.SFN_Lerp,id:8121,x:35657,y:32129,varname:node_8121,prsc:2|A-1540-OUT,B-5968-OUT,T-3084-OUT;n:type:ShaderForge.SFN_Get,id:3084,x:35410,y:32247,varname:node_3084,prsc:2|IN-6236-OUT;n:type:ShaderForge.SFN_Slider,id:5968,x:35605,y:32453,ptovrint:False,ptlb:WetZoneGloss,ptin:_WetZoneGloss,varname:_WetZoneGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3816,x:33770,y:34225,varname:node_3816,prsc:2|A-9514-OUT,B-8625-OUT;n:type:ShaderForge.SFN_Slider,id:8625,x:33364,y:34362,ptovrint:False,ptlb:WetZoneMultiply,ptin:_WetZoneMultiply,varname:_WetZoneMultiply,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:5633,x:31422,y:31151,varname:ParalaxUV,prsc:2|IN-3463-UVOUT;n:type:ShaderForge.SFN_Get,id:6960,x:31125,y:32106,varname:node_6960,prsc:2|IN-5633-OUT;n:type:ShaderForge.SFN_Set,id:2560,x:36175,y:34937,cmnt:Fresnel And Scattering,varname:SelfIllumination,prsc:2|IN-8948-OUT;n:type:ShaderForge.SFN_Get,id:7101,x:30596,y:31558,varname:node_7101,prsc:2|IN-2560-OUT;n:type:ShaderForge.SFN_Multiply,id:4890,x:31078,y:31571,varname:node_4890,prsc:2|A-2231-G,B-9242-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2231,x:30804,y:31593,varname:node_2231,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7101-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9242,x:30909,y:31834,ptovrint:False,ptlb:Blur_coeff,ptin:_Blur_coeff,varname:_Blur_coeff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1280.04;n:type:ShaderForge.SFN_Clamp01,id:3141,x:29904,y:31658,varname:node_3141,prsc:2|IN-9258-OUT;n:type:ShaderForge.SFN_Vector1,id:4958,x:30319,y:31377,varname:node_4958,prsc:2,v1:1;n:type:ShaderForge.SFN_ViewPosition,id:1787,x:33215,y:31834,varname:node_1787,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5586,x:33158,y:31980,varname:node_5586,prsc:2;n:type:ShaderForge.SFN_Distance,id:3898,x:33399,y:31932,varname:node_3898,prsc:2|A-1787-XYZ,B-5586-XYZ;n:type:ShaderForge.SFN_Relay,id:4390,x:33778,y:31918,varname:node_4390,prsc:2|IN-3898-OUT;n:type:ShaderForge.SFN_Smoothstep,id:9258,x:29803,y:32155,varname:node_9258,prsc:2|A-5815-OUT,B-5047-OUT,V-4312-OUT;n:type:ShaderForge.SFN_Vector1,id:5047,x:29295,y:32143,varname:node_5047,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:2953,x:30642,y:31105,varname:node_2953,prsc:2|A-8609-OUT,B-7866-OUT,T-3206-OUT;n:type:ShaderForge.SFN_Get,id:3206,x:30386,y:31067,varname:node_3206,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Multiply,id:7634,x:30865,y:31427,varname:node_7634,prsc:2|A-3616-OUT,B-3141-OUT;n:type:ShaderForge.SFN_Set,id:9501,x:35456,y:33234,varname:NormalFinal,prsc:2|IN-2286-OUT;n:type:ShaderForge.SFN_Add,id:7255,x:36370,y:31704,varname:node_7255,prsc:2|A-2847-OUT,B-6969-OUT,C-3409-OUT;n:type:ShaderForge.SFN_Get,id:964,x:35830,y:31757,varname:node_964,prsc:2|IN-2560-OUT;n:type:ShaderForge.SFN_Multiply,id:6969,x:36093,y:31770,varname:node_6969,prsc:2|A-964-OUT,B-1760-OUT;n:type:ShaderForge.SFN_Vector1,id:1760,x:35797,y:31834,varname:node_1760,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:5190,x:31272,y:31607,varname:MipBlur,prsc:2|IN-4890-OUT;n:type:ShaderForge.SFN_Clamp,id:3794,x:35526,y:31947,varname:node_3794,prsc:2|IN-6962-OUT,MIN-2399-OUT,MAX-2910-OUT;n:type:ShaderForge.SFN_Vector1,id:2910,x:35222,y:32037,varname:node_2910,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8212,x:30766,y:37236,ptovrint:False,ptlb:FlowPower,ptin:_FlowPower,varname:_FlowPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6988,x:31506,y:37167,ptovrint:False,ptlb:FlowSpeed,ptin:_FlowSpeed,varname:_FlowSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:1772,x:32470,y:36370,ptovrint:False,ptlb:WaveBump2,ptin:_WaveBump2,varname:_WaveBump2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Set,id:9849,x:34024,y:37140,varname:flowMapGrayscale,prsc:2|IN-4637-OUT;n:type:ShaderForge.SFN_Clamp01,id:9275,x:34080,y:34104,varname:node_9275,prsc:2|IN-3816-OUT;n:type:ShaderForge.SFN_Set,id:3420,x:33305,y:34804,varname:NormalWaterUnflowed,prsc:2|IN-1014-OUT;n:type:ShaderForge.SFN_Get,id:594,x:32984,y:33409,varname:node_594,prsc:2|IN-3420-OUT;n:type:ShaderForge.SFN_Get,id:4262,x:33109,y:33530,varname:node_4262,prsc:2|IN-9849-OUT;n:type:ShaderForge.SFN_Lerp,id:8565,x:33482,y:33545,varname:node_8565,prsc:2|A-594-OUT,B-4262-OUT,T-21-OUT;n:type:ShaderForge.SFN_Slider,id:21,x:32984,y:33598,ptovrint:False,ptlb:FlowNormalPower,ptin:_FlowNormalPower,varname:_FlowNormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5128205,max:1;n:type:ShaderForge.SFN_Slider,id:8104,x:29276,y:37255,ptovrint:False,ptlb:FlowMapSmoothing,ptin:_FlowMapSmoothing,varname:_FlowMapSmoothing,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:16;n:type:ShaderForge.SFN_ComponentMask,id:8228,x:33697,y:33298,varname:node_8228,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-594-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4443,x:33941,y:33282,ptovrint:False,ptlb:max_vave,ptin:_max_vave,varname:_max_vave,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Set,id:5531,x:34598,y:33265,varname:waveTopDepth,prsc:2|IN-7632-OUT;n:type:ShaderForge.SFN_Smoothstep,id:7632,x:34370,y:33265,varname:node_7632,prsc:2|A-4911-OUT,B-4443-OUT,V-7977-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4911,x:34121,y:33201,ptovrint:False,ptlb:min_wave,ptin:_min_wave,varname:_min_wave,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:7977,x:34167,y:33316,varname:node_7977,prsc:2|A-8228-R,B-8228-G;n:type:ShaderForge.SFN_Get,id:9324,x:31480,y:31954,varname:node_9324,prsc:2|IN-8505-OUT;n:type:ShaderForge.SFN_Lerp,id:2993,x:31963,y:31820,varname:node_2993,prsc:2|A-9398-OUT,B-5041-OUT,T-9324-OUT;n:type:ShaderForge.SFN_Vector3,id:9398,x:31792,y:32053,varname:node_9398,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Subtract,id:2217,x:31949,y:31531,cmnt:Water Absorbtion,varname:node_2217,prsc:2|A-6343-OUT,B-2993-OUT;n:type:ShaderForge.SFN_Set,id:3649,x:30269,y:32464,varname:DecompressedDepth,prsc:2|IN-6191-OUT;n:type:ShaderForge.SFN_Set,id:8505,x:30135,y:31508,varname:depthMapWater,prsc:2|IN-3141-OUT;n:type:ShaderForge.SFN_Subtract,id:5247,x:32235,y:31588,cmnt:Water Absorbtion,varname:node_5247,prsc:2|A-2217-OUT,B-6884-OUT;n:type:ShaderForge.SFN_Multiply,id:6884,x:31717,y:31711,varname:node_6884,prsc:2|A-9324-OUT,B-5948-OUT;n:type:ShaderForge.SFN_Vector1,id:5948,x:31594,y:31871,varname:node_5948,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Slider,id:2399,x:35065,y:31879,ptovrint:False,ptlb:DistanceGlossMin,ptin:_DistanceGlossMin,varname:_DistanceGlossMin,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:8433,x:34634,y:32904,varname:node_8433,prsc:2|A-2120-OUT,B-7415-OUT;n:type:ShaderForge.SFN_OneMinus,id:5041,x:32220,y:31958,varname:node_5041,prsc:2|IN-671-RGB;n:type:ShaderForge.SFN_Color,id:671,x:31978,y:32162,ptovrint:False,ptlb:Depth color,ptin:_Depthcolor,varname:_Depthcolor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4901961,c2:0.4901961,c3:0.4901961,c4:1;n:type:ShaderForge.SFN_Slider,id:24,x:35120,y:32543,ptovrint:False,ptlb:ShoreGlossValue,ptin:_ShoreGlossValue,varname:_ShoreGlossValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6192,x:33207,y:34184,varname:node_6192,prsc:2|A-3816-OUT,B-2050-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2050,x:33001,y:34319,ptovrint:False,ptlb:shore_erosion,ptin:_shore_erosion,varname:_shore_erosion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_TexCoord,id:8876,x:29753,y:33588,varname:node_8876,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:4966,x:29799,y:37365,ptovrint:False,ptlb:FlowMap,ptin:_FlowMap,varname:_FlowMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ff5f9d29db4c9eb4da2c653f576eb55b,ntxv:0,isnm:False|MIP-8104-OUT;n:type:ShaderForge.SFN_Append,id:3761,x:30965,y:37374,varname:node_3761,prsc:2|A-1390-G,B-1390-R;n:type:ShaderForge.SFN_Multiply,id:3177,x:31203,y:37363,varname:node_3177,prsc:2|A-3761-OUT,B-5980-OUT;n:type:ShaderForge.SFN_Vector1,id:5980,x:31000,y:37562,varname:node_5980,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:52,x:31495,y:37378,varname:node_52,prsc:2|A-3177-OUT,B-2505-OUT;n:type:ShaderForge.SFN_Vector1,id:2505,x:31282,y:37550,varname:node_2505,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:1604,x:31777,y:37399,cmnt:flowVector,varname:node_1604,prsc:2|A-52-OUT,B-8212-OUT;n:type:ShaderForge.SFN_Time,id:9483,x:31572,y:37917,varname:node_9483,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9770,x:31797,y:37917,cmnt:timeScale,varname:node_9770,prsc:2|A-9483-TSL,B-6988-OUT;n:type:ShaderForge.SFN_Frac,id:3611,x:32028,y:37810,cmnt:phaseX,varname:node_3611,prsc:2|IN-9770-OUT;n:type:ShaderForge.SFN_Add,id:6405,x:32028,y:38058,varname:node_6405,prsc:2|A-9770-OUT,B-1561-OUT;n:type:ShaderForge.SFN_Frac,id:2243,x:32173,y:37948,cmnt:phasey,varname:node_2243,prsc:2|IN-6405-OUT;n:type:ShaderForge.SFN_Vector1,id:1561,x:31818,y:38155,varname:node_1561,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:3126,x:32154,y:37200,varname:node_3126,prsc:2,uv:0;n:type:ShaderForge.SFN_Subtract,id:5193,x:32531,y:37246,cmnt:UV1,varname:node_5193,prsc:0|A-3126-UVOUT,B-2463-OUT;n:type:ShaderForge.SFN_Multiply,id:2463,x:32138,y:37435,varname:node_2463,prsc:2|A-1604-OUT,B-4672-OUT;n:type:ShaderForge.SFN_Append,id:4672,x:32440,y:37708,varname:node_4672,prsc:2|A-3611-OUT,B-3611-OUT;n:type:ShaderForge.SFN_Append,id:2285,x:32468,y:37965,varname:node_2285,prsc:2|A-2243-OUT,B-2243-OUT;n:type:ShaderForge.SFN_Multiply,id:5933,x:32138,y:37632,varname:node_5933,prsc:2|A-1604-OUT,B-2285-OUT;n:type:ShaderForge.SFN_Subtract,id:285,x:32571,y:37455,cmnt:UV2,varname:node_285,prsc:0|A-3126-UVOUT,B-5933-OUT;n:type:ShaderForge.SFN_Abs,id:1369,x:32602,y:36979,varname:node_1369,prsc:2|IN-8639-OUT;n:type:ShaderForge.SFN_Vector1,id:3828,x:32211,y:36912,varname:node_3828,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:8639,x:32412,y:36979,varname:node_8639,prsc:2|A-3828-OUT,B-3611-OUT;n:type:ShaderForge.SFN_Divide,id:6869,x:32887,y:36937,cmnt:interp,varname:node_6869,prsc:2|A-1369-OUT,B-3828-OUT;n:type:ShaderForge.SFN_Tex2d,id:4498,x:33258,y:36914,cmnt:c1,varname:_node_9429,prsc:2,ntxv:0,isnm:False|UVIN-5193-OUT,TEX-1772-TEX;n:type:ShaderForge.SFN_Tex2d,id:1941,x:33234,y:37190,cmnt:c2,varname:_node_3036,prsc:2,ntxv:0,isnm:False|UVIN-285-OUT,TEX-1772-TEX;n:type:ShaderForge.SFN_Lerp,id:4637,x:33547,y:37093,varname:node_4637,prsc:2|A-4498-RGB,B-1941-RGB,T-6869-OUT;n:type:ShaderForge.SFN_Code,id:8297,x:30067,y:37365,varname:node_8297,prsc:2,code:IwBpAGYAIAAhAFUATgBJAFQAWQBfAEMATwBMAE8AUgBTAFAAQQBDAEUAXwBHAEEATQBNAEEACgBpAG4AQwAgAD0AIABMAGkAbgBlAGEAcgBUAG8ARwBhAG0AbQBhAFMAcABhAGMAZQAoAGkAbgBDACkAOwANAAoAcgBlAHQAdQByAG4AIABpAG4AQwA7AAoAIwBlAG4AZABpAGYACgA=,output:2,fname:LinearToGamma,width:497,height:266,input:2,input_1_label:inC|A-4966-RGB;n:type:ShaderForge.SFN_ComponentMask,id:1390,x:30682,y:37363,varname:node_1390,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8297-OUT;n:type:ShaderForge.SFN_Slider,id:9543,x:33272,y:32440,ptovrint:False,ptlb:fresnel_influence1,ptin:_fresnel_influence1,varname:_fresnel_influence1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.5;n:type:ShaderForge.SFN_Slider,id:9977,x:33706,y:31765,ptovrint:False,ptlb:fresnel_influence2,ptin:_fresnel_influence2,varname:_fresnel_influence2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01,max:0.02;n:type:ShaderForge.SFN_Slider,id:805,x:34323,y:31827,ptovrint:False,ptlb:fresnel_influence3,ptin:_fresnel_influence3,varname:_fresnel_influence3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.4,max:0;n:type:ShaderForge.SFN_ComponentMask,id:9444,x:36754,y:32288,varname:node_9444,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4153-OUT;n:type:ShaderForge.SFN_Clamp01,id:2017,x:36973,y:32342,varname:node_2017,prsc:2|IN-9444-OUT;n:type:ShaderForge.SFN_Get,id:9393,x:29991,y:32924,varname:node_9393,prsc:2|IN-9849-OUT;n:type:ShaderForge.SFN_Add,id:7781,x:30452,y:32770,varname:node_7781,prsc:2|A-4312-OUT,B-9211-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5563,x:30180,y:32924,varname:node_5563,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9393-OUT;n:type:ShaderForge.SFN_RemapRange,id:9211,x:30352,y:32937,varname:node_9211,prsc:2,frmn:0.5,frmx:1,tomn:-0.01,tomx:0.01|IN-5563-OUT;n:type:ShaderForge.SFN_Get,id:8963,x:30457,y:35146,varname:node_8963,prsc:2|IN-9849-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3763,x:30746,y:35139,varname:node_3763,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8963-OUT;n:type:ShaderForge.SFN_Clamp01,id:9228,x:31246,y:35153,varname:node_9228,prsc:2|IN-1061-OUT;n:type:ShaderForge.SFN_Multiply,id:1061,x:31023,y:35210,varname:node_1061,prsc:2|A-3763-OUT,B-861-OUT;n:type:ShaderForge.SFN_ValueProperty,id:861,x:30788,y:35404,ptovrint:False,ptlb:node_861,ptin:_node_861,varname:_node_861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Set,id:1999,x:33513,y:32085,varname:DistanceDepth,prsc:2|IN-3898-OUT;n:type:ShaderForge.SFN_Lerp,id:2286,x:34580,y:33414,varname:node_2286,prsc:2|A-4545-OUT,B-4592-OUT,T-3078-OUT;n:type:ShaderForge.SFN_Get,id:4888,x:36623,y:32509,varname:node_4888,prsc:2|IN-9501-OUT;n:type:ShaderForge.SFN_Blend,id:1133,x:32000,y:34769,varname:node_1133,prsc:2,blmd:6,clmp:False|SRC-5964-RGB,DST-1434-RGB;n:type:ShaderForge.SFN_Tex2d,id:8624,x:28381,y:32671,ptovrint:False,ptlb:ShoreDepthMap,ptin:_ShoreDepthMap,varname:_ShoreDepthMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7d852d07dd74b1948baa55debdcfc65a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5095,x:29102,y:32510,varname:node_5095,prsc:2|A-6035-OUT,B-314-OUT;n:type:ShaderForge.SFN_Multiply,id:314,x:28965,y:32684,varname:node_314,prsc:2|A-8624-R,B-7396-OUT;n:type:ShaderForge.SFN_Slider,id:7396,x:28609,y:32877,ptovrint:False,ptlb:node_7396,ptin:_node_7396,varname:_node_7396,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.118187,max:1;n:type:ShaderForge.SFN_Smoothstep,id:5542,x:29021,y:31554,varname:node_5542,prsc:2|A-2789-OUT,B-436-OUT,V-4312-OUT;n:type:ShaderForge.SFN_Add,id:2789,x:28611,y:31411,varname:node_2789,prsc:2|A-5815-OUT,B-4928-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4928,x:28427,y:31569,ptovrint:False,ptlb:ShoreWAvesOffset,ptin:_ShoreWAvesOffset,varname:_ShoreWAvesOffset,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:436,x:28825,y:31683,varname:node_436,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6240,x:29228,y:31578,varname:node_6240,prsc:2|A-5542-OUT,B-4757-OUT;n:type:ShaderForge.SFN_Vector1,id:4757,x:29228,y:31719,varname:node_4757,prsc:2,v1:50;n:type:ShaderForge.SFN_Frac,id:6848,x:29213,y:31380,varname:node_6848,prsc:2|IN-6881-OUT;n:type:ShaderForge.SFN_Set,id:8774,x:30205,y:30957,varname:WaveReturn,prsc:2|IN-2450-OUT;n:type:ShaderForge.SFN_Get,id:6194,x:37111,y:32170,varname:node_6194,prsc:2|IN-8774-OUT;n:type:ShaderForge.SFN_RemapRange,id:5927,x:29445,y:31308,varname:node_5927,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-6848-OUT;n:type:ShaderForge.SFN_Abs,id:9494,x:29620,y:31325,varname:node_9494,prsc:2|IN-5927-OUT;n:type:ShaderForge.SFN_Get,id:8697,x:29274,y:31259,varname:node_8697,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Lerp,id:231,x:29464,y:31131,varname:node_231,prsc:2|A-978-OUT,B-398-A,T-8697-OUT;n:type:ShaderForge.SFN_Vector1,id:978,x:29260,y:31035,varname:node_978,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:6881,x:29483,y:31550,varname:node_6881,prsc:2|A-6240-OUT,B-8830-OUT;n:type:ShaderForge.SFN_Get,id:8830,x:29395,y:31709,varname:node_8830,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_Set,id:9980,x:28760,y:34696,varname:GlobalSpeed,prsc:2|IN-7677-OUT;n:type:ShaderForge.SFN_Lerp,id:2450,x:29719,y:31073,varname:node_2450,prsc:2|A-231-OUT,B-978-OUT,T-7233-OUT;n:type:ShaderForge.SFN_Multiply,id:5883,x:29759,y:31479,varname:node_5883,prsc:2|A-5542-OUT,B-6995-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6995,x:29588,y:31762,ptovrint:False,ptlb:WaveExtension,ptin:_WaveExtension,varname:_WaveExtension,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:7233,x:29927,y:31422,varname:node_7233,prsc:2|IN-5883-OUT;n:type:ShaderForge.SFN_Get,id:3658,x:33605,y:33661,varname:node_3658,prsc:2|IN-8774-OUT;n:type:ShaderForge.SFN_Multiply,id:8716,x:33813,y:33652,varname:node_8716,prsc:2|A-3658-OUT,B-3996-OUT;n:type:ShaderForge.SFN_Vector1,id:3996,x:33649,y:33787,varname:node_3996,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6780,x:34137,y:33481,varname:node_6780,prsc:2|A-8565-OUT,B-1475-OUT;n:type:ShaderForge.SFN_Add,id:1475,x:34036,y:33652,varname:node_1475,prsc:2|A-8716-OUT,B-6950-OUT;n:type:ShaderForge.SFN_Vector1,id:6950,x:33921,y:33760,varname:node_6950,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Tex2d,id:9704,x:37248,y:31801,ptovrint:False,ptlb:node_7342,ptin:_node_7342,varname:_node_7342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-4141-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4156,x:37195,y:32050,ptovrint:False,ptlb:ShoreWaveIllum,ptin:_ShoreWaveIllum,varname:_ShoreWaveIllum,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7493,x:37552,y:31893,varname:node_7493,prsc:2|A-9704-G,B-4156-OUT;n:type:ShaderForge.SFN_Lerp,id:2862,x:37990,y:32285,varname:node_2862,prsc:2|A-4801-OUT,B-7493-OUT,T-3409-OUT;n:type:ShaderForge.SFN_Vector1,id:4801,x:37697,y:31944,varname:node_4801,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:3409,x:37655,y:32077,varname:node_3409,prsc:2|A-6194-OUT,B-4156-OUT;n:type:ShaderForge.SFN_Vector1,id:3478,x:37634,y:32417,varname:node_3478,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:1016,x:37386,y:32144,varname:node_1016,prsc:2|IN-6194-OUT;n:type:ShaderForge.SFN_Lerp,id:4153,x:36194,y:32253,varname:node_4153,prsc:2|A-8121-OUT,B-3794-OUT,T-4582-OUT;n:type:ShaderForge.SFN_Get,id:8446,x:34530,y:34685,varname:node_8446,prsc:2|IN-3649-OUT;n:type:ShaderForge.SFN_OneMinus,id:5758,x:30253,y:32236,varname:node_5758,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:2827,x:34784,y:34558,varname:node_2827,prsc:2|IN-8446-OUT;n:type:ShaderForge.SFN_Power,id:2239,x:37592,y:31727,varname:node_2239,prsc:2|VAL-9704-G,EXP-4156-OUT;n:type:ShaderForge.SFN_TexCoord,id:1909,x:36865,y:33318,varname:node_1909,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4141,x:37510,y:33322,varname:node_4141,prsc:2|A-2947-OUT,B-9688-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8950,x:36716,y:33700,ptovrint:False,ptlb:Angle1,ptin:_Angle1,varname:_Angle1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Sin,id:7188,x:36969,y:33589,varname:node_7188,prsc:2|IN-8950-OUT;n:type:ShaderForge.SFN_Cos,id:6457,x:36969,y:33792,varname:node_6457,prsc:2|IN-8950-OUT;n:type:ShaderForge.SFN_Append,id:6759,x:37154,y:33623,varname:node_6759,prsc:2|A-7188-OUT,B-6457-OUT;n:type:ShaderForge.SFN_Time,id:3416,x:37425,y:33881,varname:node_3416,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7805,x:37639,y:33610,varname:node_7805,prsc:2|A-9688-OUT,B-3416-T;n:type:ShaderForge.SFN_Frac,id:8085,x:37627,y:33863,varname:node_8085,prsc:2|IN-3416-T;n:type:ShaderForge.SFN_ValueProperty,id:4088,x:37154,y:33878,ptovrint:False,ptlb:node_4946,ptin:_node_4946,varname:_node_4946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:9688,x:37357,y:33623,varname:node_9688,prsc:2|A-6759-OUT,B-4088-OUT;n:type:ShaderForge.SFN_Get,id:2947,x:36954,y:33231,varname:node_2947,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_Tex2d,id:398,x:29053,y:31182,ptovrint:False,ptlb:node_398,ptin:_node_398,varname:_node_398,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:92c0c03928aba514796f6d1ac58ae084,ntxv:0,isnm:False|UVIN-4807-OUT;n:type:ShaderForge.SFN_Append,id:8703,x:28409,y:31053,varname:node_8703,prsc:2|A-9815-OUT,B-6881-OUT;n:type:ShaderForge.SFN_Slider,id:9815,x:28055,y:31049,ptovrint:False,ptlb:WaveShape,ptin:_WaveShape,varname:_WaveShape,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:3266,x:28363,y:30708,ptovrint:False,ptlb:NoiseShaping,ptin:_NoiseShaping,varname:_NoiseShaping,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:92002d8ac05f4ac4d8a3d238058fdf37,ntxv:2,isnm:False|UVIN-5844-OUT;n:type:ShaderForge.SFN_Tex2d,id:4454,x:28512,y:31259,ptovrint:False,ptlb:node_4454,ptin:_node_4454,varname:_node_4454,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:4807,x:28765,y:31069,varname:node_4807,prsc:2|A-8703-OUT,B-6342-OUT;n:type:ShaderForge.SFN_Lerp,id:6029,x:29483,y:30877,varname:node_6029,prsc:2|A-1855-OUT,B-4074-OUT,T-8697-OUT;n:type:ShaderForge.SFN_Lerp,id:6934,x:29754,y:30869,varname:node_6934,prsc:2|A-6029-OUT,B-1855-OUT,T-7233-OUT;n:type:ShaderForge.SFN_RemapRange,id:708,x:28899,y:30812,varname:node_708,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-398-RGB;n:type:ShaderForge.SFN_Set,id:6066,x:30307,y:30766,varname:WavReturnNM,prsc:2|IN-6934-OUT;n:type:ShaderForge.SFN_Vector3,id:1855,x:29400,y:30640,varname:node_1855,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Vector1,id:9553,x:29172,y:30676,varname:node_9553,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:4074,x:29126,y:30798,varname:node_4074,prsc:2|A-708-OUT,B-1855-OUT,T-5884-OUT;n:type:ShaderForge.SFN_Vector1,id:5884,x:29035,y:30966,varname:node_5884,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Multiply,id:6342,x:28566,y:30801,varname:node_6342,prsc:2|A-3266-R,B-4285-OUT;n:type:ShaderForge.SFN_Slider,id:4285,x:28312,y:30946,ptovrint:False,ptlb:ShoreWaveStrength,ptin:_ShoreWaveStrength,varname:_ShoreWaveStrength,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:4592,x:33941,y:33430,varname:node_4592,prsc:2|A-8565-OUT,B-9521-OUT,T-3658-OUT;n:type:ShaderForge.SFN_Tex2d,id:4547,x:29110,y:32068,ptovrint:False,ptlb:NoiseShaping2,ptin:_NoiseShaping2,varname:_NoiseShaping2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:8110,x:29309,y:32219,varname:node_8110,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4547-G;n:type:ShaderForge.SFN_Multiply,id:2172,x:29587,y:32259,varname:node_2172,prsc:2|A-8110-OUT,B-7696-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7696,x:29349,y:32433,ptovrint:False,ptlb:AddNoise,ptin:_AddNoise,varname:_AddNoise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:8056,x:28580,y:34335,ptovrint:True,ptlb:ShapeWorldMapping,ptin:_ShapeWorldMapping,varname:_ShapeWorldMapping,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4791-OUT,B-5114-OUT;n:type:ShaderForge.SFN_Set,id:9237,x:28854,y:34330,varname:shapeWorldMaps,prsc:2|IN-8056-OUT;n:type:ShaderForge.SFN_Add,id:7367,x:27953,y:34166,varname:node_7367,prsc:2|A-4610-OUT,B-5088-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3788,x:27465,y:34319,ptovrint:False,ptlb:node_3788,ptin:_node_3788,varname:_node_3788,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:9920,x:28314,y:34272,varname:node_9920,prsc:2|A-7367-OUT,B-4643-OUT;n:type:ShaderForge.SFN_Append,id:5088,x:27765,y:34211,varname:node_5088,prsc:2|A-3788-X,B-3788-Y;n:type:ShaderForge.SFN_Append,id:4643,x:27787,y:34497,varname:node_4643,prsc:2|A-3788-Z,B-3788-W;n:type:ShaderForge.SFN_Get,id:4791,x:28265,y:34519,varname:node_4791,prsc:2|IN-8987-OUT;n:type:ShaderForge.SFN_Divide,id:5114,x:28216,y:34392,varname:node_5114,prsc:2|A-7367-OUT,B-6522-OUT;n:type:ShaderForge.SFN_Multiply,id:6522,x:28091,y:34619,varname:node_6522,prsc:2|A-4643-OUT,B-7653-OUT;n:type:ShaderForge.SFN_Vector2,id:7653,x:27943,y:34761,varname:node_7653,prsc:2,v1:10,v2:10;n:type:ShaderForge.SFN_Get,id:5844,x:28026,y:30719,varname:node_5844,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_Append,id:1340,x:28062,y:34453,varname:node_1340,prsc:2;proporder:6665-3168-671-358-1813-8861-7736-7353-3814-9396-8624-3842-1173-1772-6260-5812-9226-3605-2360-9808-4282-9709-1889-7501-8923-5815-220-4147-5968-8625-2050-9242-4966-6988-8212-21-8104-9470-2399-24-9543-9977-805-4754-4911-4443-861-7396-4928-6995-9704-4156-8950-4088-398-9815-3266-4285-4547-7696-8056-3788;pass:END;sub:END;*/

Shader "NordLake/LakeShaderWaves" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _SubsurfaceScatter ("SubsurfaceScatter", Color) = (0.2509804,0.2509804,0.2509804,1)
        _Depthcolor ("Depth color", Color) = (0.4901961,0.4901961,0.4901961,1)
        _Metallic ("Metallic", Range(-1, 1)) = 1
        _Gloss ("Gloss", Range(0, 10)) = 5.634464
        _Refraction ("Refraction", Range(0, 500)) = 0.0221952
        _MainTex ("Base Color", 2D) = "white" {}
        _ShoreTex ("ShoreTex", 2D) = "white" {}
        _ShoreNormal ("ShoreNormal", 2D) = "bump" {}
        _ShoreGloss ("ShoreGloss", 2D) = "white" {}
        _ShoreDepthMap ("ShoreDepthMap", 2D) = "white" {}
        _windNoiseTex ("windNoiseTex", 2D) = "black" {}
        _BumpMap ("WaveBump", 2D) = "bump" {}
        _WaveBump2 ("WaveBump2", 2D) = "bump" {}
        _WindZoneDisturbance ("WindZoneDisturbance", Float ) = 2.06
        _WorldMappinScale ("WorldMappinScale", Float ) = 0.21
        _HeightDepth ("HeightDepth", Float ) = 1
        _WaveNormalStrenght ("WaveNormalStrenght", Range(0, 1)) = 0.8847271
        _ShoreSoftness ("ShoreSoftness", Range(0, 12)) = 0
        _GlobalWaveSpeed ("GlobalWaveSpeed", Range(0, 1)) = 0
        _SubsurfaceBlur ("SubsurfaceBlur", Float ) = -15.22
        _SubsurfaceFresnel ("SubsurfaceFresnel", Float ) = 7.7
        _FresnelDisturbanceFactor ("FresnelDisturbanceFactor", Float ) = 0.59
        _WindZone_Power ("WindZone_Power", Float ) = 3.96
        _ShoreTranz ("ShoreTranz", Range(0, 0.5)) = 0
        _WaterHeight ("WaterHeight", Float ) = 20
        _WetzoneTranz ("WetzoneTranz", Range(0, 2)) = 0
        _WetHeight_copy ("WetHeight_copy", Float ) = 20
        _WetZoneGloss ("WetZoneGloss", Range(0, 1)) = 0
        _WetZoneMultiply ("WetZoneMultiply", Range(0, 1)) = 0
        _shore_erosion ("shore_erosion", Float ) = 2
        _Blur_coeff ("Blur_coeff", Float ) = 1280.04
        _FlowMap ("FlowMap", 2D) = "white" {}
        _FlowSpeed ("FlowSpeed", Float ) = 0
        _FlowPower ("FlowPower", Float ) = 0
        _FlowNormalPower ("FlowNormalPower", Range(0, 1)) = 0.5128205
        _FlowMapSmoothing ("FlowMapSmoothing", Range(0, 16)) = 0
        _DepthMap ("DepthMap", 2D) = "black" {}
        _DistanceGlossMin ("DistanceGlossMin", Range(0, 1)) = 0
        _ShoreGlossValue ("ShoreGlossValue", Range(0, 1)) = 0
        _fresnel_influence1 ("fresnel_influence1", Range(0, 0.5)) = 0.1
        _fresnel_influence2 ("fresnel_influence2", Range(0, 0.02)) = 0.01
        _fresnel_influence3 ("fresnel_influence3", Range(-1, 0)) = -0.4
        _InternalsTerrainHeight ("InternalsTerrainHeight", Float ) = 6.82
        _min_wave ("min_wave", Float ) = 0
        _max_vave ("max_vave", Float ) = 0
        _node_861 ("node_861", Float ) = 1
        _node_7396 ("node_7396", Range(0, 1)) = 0.118187
        _ShoreWAvesOffset ("ShoreWAvesOffset", Float ) = 0.2
        _WaveExtension ("WaveExtension", Float ) = 0
        _node_7342 ("node_7342", 2D) = "black" {}
        _ShoreWaveIllum ("ShoreWaveIllum", Float ) = 0
        _Angle1 ("Angle1", Float ) = 8
        _node_4946 ("node_4946", Float ) = 0.2
        _node_398 ("node_398", 2D) = "white" {}
        _WaveShape ("WaveShape", Range(0, 1)) = 0
        _NoiseShaping ("NoiseShaping", 2D) = "black" {}
        _ShoreWaveStrength ("ShoreWaveStrength", Range(0, 1)) = 0
        _NoiseShaping2 ("NoiseShaping2", 2D) = "white" {}
        _AddNoise ("AddNoise", Float ) = 0
        [MaterialToggle] _ShapeWorldMapping ("ShapeWorldMapping", Float ) = 1
        _node_3788 ("node_3788", Vector) = (0,0,0,0)
    }
    SubShader {
        Tags {
            "Queue"="Geometry+20"
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _DepthMap; uniform float4 _DepthMap_ST;
            uniform float _HeightDepth;
            uniform float _WaveNormalStrenght;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Refraction;
            uniform float _InternalsTerrainHeight;
            uniform float _GlobalWaveSpeed;
            uniform fixed _ShoreSoftness;
            uniform sampler2D _ShoreTex; uniform float4 _ShoreTex_ST;
            uniform sampler2D _ShoreNormal; uniform float4 _ShoreNormal_ST;
            uniform float _WorldMappinScale;
            uniform float _SubsurfaceBlur;
            uniform half4 _SubsurfaceScatter;
            uniform float _SubsurfaceFresnel;
            uniform float _FresnelDisturbanceFactor;
            uniform sampler2D _windNoiseTex; uniform float4 _windNoiseTex_ST;
            uniform float _WindZoneDisturbance;
            uniform float _WindZone_Power;
            uniform sampler2D _ShoreGloss; uniform float4 _ShoreGloss_ST;
            uniform float _ShoreTranz;
            uniform float _WaterHeight;
            uniform float _WetzoneTranz;
            uniform float _WetHeight_copy;
            uniform float _WetZoneGloss;
            uniform float _WetZoneMultiply;
            uniform float _Blur_coeff;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _WaveBump2; uniform float4 _WaveBump2_ST;
            uniform float _FlowNormalPower;
            uniform float _FlowMapSmoothing;
            uniform float _DistanceGlossMin;
            uniform float4 _Depthcolor;
            uniform float _ShoreGlossValue;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            float3 LinearToGamma( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = LinearToGammaSpace(inC);
            return inC;
            #endif
            
            }
            
            uniform float _fresnel_influence1;
            uniform float _fresnel_influence2;
            uniform float _fresnel_influence3;
            uniform sampler2D _ShoreDepthMap; uniform float4 _ShoreDepthMap_ST;
            uniform float _node_7396;
            uniform float _ShoreWAvesOffset;
            uniform float _WaveExtension;
            uniform float _ShoreWaveIllum;
            uniform sampler2D _node_398; uniform float4 _node_398_ST;
            uniform float _WaveShape;
            uniform sampler2D _NoiseShaping; uniform float4 _NoiseShaping_ST;
            uniform float _ShoreWaveStrength;
            uniform sampler2D _NoiseShaping2; uniform float4 _NoiseShaping2_ST;
            uniform float _AddNoise;
            uniform fixed _ShapeWorldMapping;
            uniform float4 _node_3788;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_4610 = float2(i.posWorld.r,i.posWorld.b);
                fixed2 WorldMapping = (node_4610*_WorldMappinScale);
                float2 node_8609 = WorldMapping;
                float4 node_2872 = _Time + _TimeEditor;
                float node_7677 = (_GlobalWaveSpeed*node_2872.g);
                float2 node_9935 = (WorldMapping+node_7677);
                float3 _BumpMap2 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9935, _BumpMap)));
                float2 uVS = i.uv0;
                float2 node_7367 = (node_4610+float2(_node_3788.r,_node_3788.g));
                float2 node_4643 = float2(_node_3788.b,_node_3788.a);
                float2 shapeWorldMaps = lerp( uVS, (node_7367/(node_4643*float2(10,10))), _ShapeWorldMapping );
                float2 node_8542 = shapeWorldMaps;
                float4 _DepthMap_var = tex2Dlod(_DepthMap,float4(TRANSFORM_TEX(node_8542, _DepthMap),0.0,_ShoreSoftness));
                float4 _NoiseShaping2_var = tex2D(_NoiseShaping2,TRANSFORM_TEX(i.uv0, _NoiseShaping2));
                float4 _ShoreDepthMap_var = tex2D(_ShoreDepthMap,TRANSFORM_TEX(i.uv0, _ShoreDepthMap));
                float node_6191 = (((_DepthMap_var.r+_DepthMap_var.g+_DepthMap_var.b+((_NoiseShaping2_var.g*2.0+-1.0)*_AddNoise))/4.0)+(_ShoreDepthMap_var.r*_node_7396)); // DecompressedDepth
                float node_4312 = (node_6191*_InternalsTerrainHeight); // StartRemapDepth
                float node_3141 = saturate(smoothstep( _WaterHeight, 1.0, node_4312 ));
                float4 _FlowMap_var = tex2Dlod(_FlowMap,float4(TRANSFORM_TEX(i.uv0, _FlowMap),0.0,_FlowMapSmoothing));
                float2 node_1390 = LinearToGamma( _FlowMap_var.rgb ).rg;
                float2 node_1604 = (((float2(node_1390.g,node_1390.r)*2.0)-1.0)*_FlowPower); // flowVector
                float4 node_9483 = _Time + _TimeEditor;
                float node_9770 = (node_9483.r*_FlowSpeed); // timeScale
                float node_3611 = frac(node_9770); // phaseX
                fixed2 node_5193 = (i.uv0-(node_1604*float2(node_3611,node_3611))); // UV1
                float3 _node_9429 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_5193, _WaveBump2))); // c1
                float node_2243 = frac((node_9770+0.5)); // phasey
                fixed2 node_285 = (i.uv0-(node_1604*float2(node_2243,node_2243))); // UV2
                float3 _node_3036 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_285, _WaveBump2))); // c2
                float node_3828 = 0.5;
                float3 flowMapGrayscale = lerp(_node_9429.rgb,_node_3036.rgb,(abs((node_3828-node_3611))/node_3828));
                float MaterialsMask = saturate((1.0 - smoothstep( _WaterHeight, (_WaterHeight+_ShoreTranz), (node_4312+(flowMapGrayscale.r*0.04+-0.03)) )));
                float2 node_3463 = (node_3141*(_HeightDepth - 1.0)*mul(tangentTransform, viewDirection).xy + lerp(node_8609,(node_8609+((_BumpMap2.r*_Refraction)*node_3141)),MaterialsMask));
                float2 ParalaxUV = node_3463.rg;
                float2 node_8002 = ParalaxUV;
                float3 _ShoreNormal_var = UnpackNormal(tex2D(_ShoreNormal,TRANSFORM_TEX(node_8002, _ShoreNormal)));
                float3 node_9521 = float3(0,0,1);
                float WeetZoneMask = (1.0 - smoothstep( _WetHeight_copy, (_WetHeight_copy+_WetzoneTranz), node_4312 ));
                float node_3816 = (WeetZoneMask*_WetZoneMultiply);
                half2 node_7747 = (WorldMapping+(float2(-0.6,0.6)*node_7677));
                float3 _node_591 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_7747, _BumpMap)));
                float4 node_825 = _Time + _TimeEditor;
                float2 node_8049 = (uVS+node_825.g*float2(-0.001,0.001));
                float4 _windNoiseTex_var = tex2D(_windNoiseTex,TRANSFORM_TEX(node_8049, _windNoiseTex));
                float3 NormalWaterUnflowed = lerp((1.0-(1.0-_BumpMap2.rgb)*(1.0-_node_591.rgb)),float3(0,0,1),(_WaveNormalStrenght-pow((_windNoiseTex_var.r*_WindZoneDisturbance),_WindZone_Power)));
                float3 node_594 = NormalWaterUnflowed;
                float3 node_8565 = lerp(node_594,flowMapGrayscale,_FlowNormalPower);
                float node_978 = 0.0;
                float node_5542 = smoothstep( (_WaterHeight+_ShoreWAvesOffset), 1.0, node_4312 );
                float GlobalSpeed = node_7677;
                float node_6881 = ((node_5542*50.0)+GlobalSpeed);
                float2 node_5844 = WorldMapping;
                float4 _NoiseShaping_var = tex2D(_NoiseShaping,TRANSFORM_TEX(node_5844, _NoiseShaping));
                float2 node_4807 = (float2(_WaveShape,node_6881)+(_NoiseShaping_var.r*_ShoreWaveStrength));
                float4 _node_398_var = tex2D(_node_398,TRANSFORM_TEX(node_4807, _node_398));
                float node_8697 = MaterialsMask;
                float node_7233 = saturate((node_5542*_WaveExtension));
                float WaveReturn = lerp(lerp(node_978,_node_398_var.a,node_8697),node_978,node_7233);
                float node_3658 = WaveReturn;
                float3 NormalFinal = lerp(lerp(_ShoreNormal_var.rgb,node_9521,saturate(node_3816)),lerp(node_8565,node_9521,node_3658),MaterialsMask);
                float3 normalLocal = NormalFinal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float2 node_3535 = ParalaxUV;
                float4 _ShoreGloss_var = tex2D(_ShoreGloss,TRANSFORM_TEX(node_3535, _ShoreGloss));
                float node_3898 = distance(_WorldSpaceCameraPos,i.posWorld.rgb);
                float node_4390 = node_3898;
                float node_7415 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelDisturbanceFactor);
                float gloss = saturate(lerp(lerp((_ShoreGloss_var.r*_ShoreGlossValue),_WetZoneGloss,WeetZoneMask),clamp(((1.0 - ((node_4390*_fresnel_influence2)+_fresnel_influence3))-(saturate((_Gloss*MaterialsMask*node_7415))*(clamp((1.0 - (node_4390*_fresnel_influence1)),0.5,0.7)-_windNoiseTex_var.r))),_DistanceGlossMin,1.0),MaterialsMask).r);
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = saturate(((_Metallic*MaterialsMask)+node_7415));
                float specularMonochrome;
                float2 node_6960 = ParalaxUV;
                float DecompressedDepth = node_6191;
                float3 SelfIllumination = (_SubsurfaceScatter.rgb*(1.0 - saturate((((1.0 - DecompressedDepth)*_SubsurfaceBlur)+_SubsurfaceFresnel)))); // Fresnel And Scattering
                float node_4890 = (SelfIllumination.rg.g*_Blur_coeff);
                float4 _ShoreTex_var = tex2Dlod(_ShoreTex,float4(TRANSFORM_TEX(node_6960, _ShoreTex),0.0,node_4890));
                float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(node_3463.rg, _MainTex),0.0,node_4890));
                float depthMapWater = node_3141;
                float node_9324 = depthMapWater;
                float node_6194 = WaveReturn;
                float node_3409 = (node_6194*_ShoreWaveIllum);
                float3 diffuseColor = saturate((lerp(_ShoreTex_var.rgb,(((_MainTex_var.rgb*_Color.rgb)-lerp(float3(0,0,0),(1.0 - _Depthcolor.rgb),node_9324))-(node_9324*0.1)),MaterialsMask)+(SelfIllumination*1.0)+node_3409)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
                outEmission.rgb += indirectSpecular * 1;
                outEmission.rgb += indirectDiffuse * diffuseColor;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _DepthMap; uniform float4 _DepthMap_ST;
            uniform float _HeightDepth;
            uniform float _WaveNormalStrenght;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Refraction;
            uniform float _InternalsTerrainHeight;
            uniform float _GlobalWaveSpeed;
            uniform fixed _ShoreSoftness;
            uniform sampler2D _ShoreTex; uniform float4 _ShoreTex_ST;
            uniform sampler2D _ShoreNormal; uniform float4 _ShoreNormal_ST;
            uniform float _WorldMappinScale;
            uniform float _SubsurfaceBlur;
            uniform half4 _SubsurfaceScatter;
            uniform float _SubsurfaceFresnel;
            uniform float _FresnelDisturbanceFactor;
            uniform sampler2D _windNoiseTex; uniform float4 _windNoiseTex_ST;
            uniform float _WindZoneDisturbance;
            uniform float _WindZone_Power;
            uniform sampler2D _ShoreGloss; uniform float4 _ShoreGloss_ST;
            uniform float _ShoreTranz;
            uniform float _WaterHeight;
            uniform float _WetzoneTranz;
            uniform float _WetHeight_copy;
            uniform float _WetZoneGloss;
            uniform float _WetZoneMultiply;
            uniform float _Blur_coeff;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _WaveBump2; uniform float4 _WaveBump2_ST;
            uniform float _FlowNormalPower;
            uniform float _FlowMapSmoothing;
            uniform float _DistanceGlossMin;
            uniform float4 _Depthcolor;
            uniform float _ShoreGlossValue;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            float3 LinearToGamma( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = LinearToGammaSpace(inC);
            return inC;
            #endif
            
            }
            
            uniform float _fresnel_influence1;
            uniform float _fresnel_influence2;
            uniform float _fresnel_influence3;
            uniform sampler2D _ShoreDepthMap; uniform float4 _ShoreDepthMap_ST;
            uniform float _node_7396;
            uniform float _ShoreWAvesOffset;
            uniform float _WaveExtension;
            uniform float _ShoreWaveIllum;
            uniform sampler2D _node_398; uniform float4 _node_398_ST;
            uniform float _WaveShape;
            uniform sampler2D _NoiseShaping; uniform float4 _NoiseShaping_ST;
            uniform float _ShoreWaveStrength;
            uniform sampler2D _NoiseShaping2; uniform float4 _NoiseShaping2_ST;
            uniform float _AddNoise;
            uniform fixed _ShapeWorldMapping;
            uniform float4 _node_3788;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_4610 = float2(i.posWorld.r,i.posWorld.b);
                fixed2 WorldMapping = (node_4610*_WorldMappinScale);
                float2 node_8609 = WorldMapping;
                float4 node_2872 = _Time + _TimeEditor;
                float node_7677 = (_GlobalWaveSpeed*node_2872.g);
                float2 node_9935 = (WorldMapping+node_7677);
                float3 _BumpMap2 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9935, _BumpMap)));
                float2 uVS = i.uv0;
                float2 node_7367 = (node_4610+float2(_node_3788.r,_node_3788.g));
                float2 node_4643 = float2(_node_3788.b,_node_3788.a);
                float2 shapeWorldMaps = lerp( uVS, (node_7367/(node_4643*float2(10,10))), _ShapeWorldMapping );
                float2 node_8542 = shapeWorldMaps;
                float4 _DepthMap_var = tex2Dlod(_DepthMap,float4(TRANSFORM_TEX(node_8542, _DepthMap),0.0,_ShoreSoftness));
                float4 _NoiseShaping2_var = tex2D(_NoiseShaping2,TRANSFORM_TEX(i.uv0, _NoiseShaping2));
                float4 _ShoreDepthMap_var = tex2D(_ShoreDepthMap,TRANSFORM_TEX(i.uv0, _ShoreDepthMap));
                float node_6191 = (((_DepthMap_var.r+_DepthMap_var.g+_DepthMap_var.b+((_NoiseShaping2_var.g*2.0+-1.0)*_AddNoise))/4.0)+(_ShoreDepthMap_var.r*_node_7396)); // DecompressedDepth
                float node_4312 = (node_6191*_InternalsTerrainHeight); // StartRemapDepth
                float node_3141 = saturate(smoothstep( _WaterHeight, 1.0, node_4312 ));
                float4 _FlowMap_var = tex2Dlod(_FlowMap,float4(TRANSFORM_TEX(i.uv0, _FlowMap),0.0,_FlowMapSmoothing));
                float2 node_1390 = LinearToGamma( _FlowMap_var.rgb ).rg;
                float2 node_1604 = (((float2(node_1390.g,node_1390.r)*2.0)-1.0)*_FlowPower); // flowVector
                float4 node_9483 = _Time + _TimeEditor;
                float node_9770 = (node_9483.r*_FlowSpeed); // timeScale
                float node_3611 = frac(node_9770); // phaseX
                fixed2 node_5193 = (i.uv0-(node_1604*float2(node_3611,node_3611))); // UV1
                float3 _node_9429 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_5193, _WaveBump2))); // c1
                float node_2243 = frac((node_9770+0.5)); // phasey
                fixed2 node_285 = (i.uv0-(node_1604*float2(node_2243,node_2243))); // UV2
                float3 _node_3036 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_285, _WaveBump2))); // c2
                float node_3828 = 0.5;
                float3 flowMapGrayscale = lerp(_node_9429.rgb,_node_3036.rgb,(abs((node_3828-node_3611))/node_3828));
                float MaterialsMask = saturate((1.0 - smoothstep( _WaterHeight, (_WaterHeight+_ShoreTranz), (node_4312+(flowMapGrayscale.r*0.04+-0.03)) )));
                float2 node_3463 = (node_3141*(_HeightDepth - 1.0)*mul(tangentTransform, viewDirection).xy + lerp(node_8609,(node_8609+((_BumpMap2.r*_Refraction)*node_3141)),MaterialsMask));
                float2 ParalaxUV = node_3463.rg;
                float2 node_8002 = ParalaxUV;
                float3 _ShoreNormal_var = UnpackNormal(tex2D(_ShoreNormal,TRANSFORM_TEX(node_8002, _ShoreNormal)));
                float3 node_9521 = float3(0,0,1);
                float WeetZoneMask = (1.0 - smoothstep( _WetHeight_copy, (_WetHeight_copy+_WetzoneTranz), node_4312 ));
                float node_3816 = (WeetZoneMask*_WetZoneMultiply);
                half2 node_7747 = (WorldMapping+(float2(-0.6,0.6)*node_7677));
                float3 _node_591 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_7747, _BumpMap)));
                float4 node_6989 = _Time + _TimeEditor;
                float2 node_8049 = (uVS+node_6989.g*float2(-0.001,0.001));
                float4 _windNoiseTex_var = tex2D(_windNoiseTex,TRANSFORM_TEX(node_8049, _windNoiseTex));
                float3 NormalWaterUnflowed = lerp((1.0-(1.0-_BumpMap2.rgb)*(1.0-_node_591.rgb)),float3(0,0,1),(_WaveNormalStrenght-pow((_windNoiseTex_var.r*_WindZoneDisturbance),_WindZone_Power)));
                float3 node_594 = NormalWaterUnflowed;
                float3 node_8565 = lerp(node_594,flowMapGrayscale,_FlowNormalPower);
                float node_978 = 0.0;
                float node_5542 = smoothstep( (_WaterHeight+_ShoreWAvesOffset), 1.0, node_4312 );
                float GlobalSpeed = node_7677;
                float node_6881 = ((node_5542*50.0)+GlobalSpeed);
                float2 node_5844 = WorldMapping;
                float4 _NoiseShaping_var = tex2D(_NoiseShaping,TRANSFORM_TEX(node_5844, _NoiseShaping));
                float2 node_4807 = (float2(_WaveShape,node_6881)+(_NoiseShaping_var.r*_ShoreWaveStrength));
                float4 _node_398_var = tex2D(_node_398,TRANSFORM_TEX(node_4807, _node_398));
                float node_8697 = MaterialsMask;
                float node_7233 = saturate((node_5542*_WaveExtension));
                float WaveReturn = lerp(lerp(node_978,_node_398_var.a,node_8697),node_978,node_7233);
                float node_3658 = WaveReturn;
                float3 NormalFinal = lerp(lerp(_ShoreNormal_var.rgb,node_9521,saturate(node_3816)),lerp(node_8565,node_9521,node_3658),MaterialsMask);
                float3 normalLocal = NormalFinal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float2 node_3535 = ParalaxUV;
                float4 _ShoreGloss_var = tex2D(_ShoreGloss,TRANSFORM_TEX(node_3535, _ShoreGloss));
                float node_3898 = distance(_WorldSpaceCameraPos,i.posWorld.rgb);
                float node_4390 = node_3898;
                float node_7415 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelDisturbanceFactor);
                float gloss = saturate(lerp(lerp((_ShoreGloss_var.r*_ShoreGlossValue),_WetZoneGloss,WeetZoneMask),clamp(((1.0 - ((node_4390*_fresnel_influence2)+_fresnel_influence3))-(saturate((_Gloss*MaterialsMask*node_7415))*(clamp((1.0 - (node_4390*_fresnel_influence1)),0.5,0.7)-_windNoiseTex_var.r))),_DistanceGlossMin,1.0),MaterialsMask).r);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = saturate(((_Metallic*MaterialsMask)+node_7415));
                float specularMonochrome;
                float2 node_6960 = ParalaxUV;
                float DecompressedDepth = node_6191;
                float3 SelfIllumination = (_SubsurfaceScatter.rgb*(1.0 - saturate((((1.0 - DecompressedDepth)*_SubsurfaceBlur)+_SubsurfaceFresnel)))); // Fresnel And Scattering
                float node_4890 = (SelfIllumination.rg.g*_Blur_coeff);
                float4 _ShoreTex_var = tex2Dlod(_ShoreTex,float4(TRANSFORM_TEX(node_6960, _ShoreTex),0.0,node_4890));
                float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(node_3463.rg, _MainTex),0.0,node_4890));
                float depthMapWater = node_3141;
                float node_9324 = depthMapWater;
                float node_6194 = WaveReturn;
                float node_3409 = (node_6194*_ShoreWaveIllum);
                float3 diffuseColor = saturate((lerp(_ShoreTex_var.rgb,(((_MainTex_var.rgb*_Color.rgb)-lerp(float3(0,0,0),(1.0 - _Depthcolor.rgb),node_9324))-(node_9324*0.1)),MaterialsMask)+(SelfIllumination*1.0)+node_3409)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _DepthMap; uniform float4 _DepthMap_ST;
            uniform float _HeightDepth;
            uniform float _WaveNormalStrenght;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Refraction;
            uniform float _InternalsTerrainHeight;
            uniform float _GlobalWaveSpeed;
            uniform fixed _ShoreSoftness;
            uniform sampler2D _ShoreTex; uniform float4 _ShoreTex_ST;
            uniform sampler2D _ShoreNormal; uniform float4 _ShoreNormal_ST;
            uniform float _WorldMappinScale;
            uniform float _SubsurfaceBlur;
            uniform half4 _SubsurfaceScatter;
            uniform float _SubsurfaceFresnel;
            uniform float _FresnelDisturbanceFactor;
            uniform sampler2D _windNoiseTex; uniform float4 _windNoiseTex_ST;
            uniform float _WindZoneDisturbance;
            uniform float _WindZone_Power;
            uniform sampler2D _ShoreGloss; uniform float4 _ShoreGloss_ST;
            uniform float _ShoreTranz;
            uniform float _WaterHeight;
            uniform float _WetzoneTranz;
            uniform float _WetHeight_copy;
            uniform float _WetZoneGloss;
            uniform float _WetZoneMultiply;
            uniform float _Blur_coeff;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _WaveBump2; uniform float4 _WaveBump2_ST;
            uniform float _FlowNormalPower;
            uniform float _FlowMapSmoothing;
            uniform float _DistanceGlossMin;
            uniform float4 _Depthcolor;
            uniform float _ShoreGlossValue;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            float3 LinearToGamma( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = LinearToGammaSpace(inC);
            return inC;
            #endif
            
            }
            
            uniform float _fresnel_influence1;
            uniform float _fresnel_influence2;
            uniform float _fresnel_influence3;
            uniform sampler2D _ShoreDepthMap; uniform float4 _ShoreDepthMap_ST;
            uniform float _node_7396;
            uniform float _ShoreWAvesOffset;
            uniform float _WaveExtension;
            uniform float _ShoreWaveIllum;
            uniform sampler2D _node_398; uniform float4 _node_398_ST;
            uniform float _WaveShape;
            uniform sampler2D _NoiseShaping; uniform float4 _NoiseShaping_ST;
            uniform float _ShoreWaveStrength;
            uniform sampler2D _NoiseShaping2; uniform float4 _NoiseShaping2_ST;
            uniform float _AddNoise;
            uniform fixed _ShapeWorldMapping;
            uniform float4 _node_3788;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_4610 = float2(i.posWorld.r,i.posWorld.b);
                fixed2 WorldMapping = (node_4610*_WorldMappinScale);
                float2 node_8609 = WorldMapping;
                float4 node_2872 = _Time + _TimeEditor;
                float node_7677 = (_GlobalWaveSpeed*node_2872.g);
                float2 node_9935 = (WorldMapping+node_7677);
                float3 _BumpMap2 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9935, _BumpMap)));
                float2 uVS = i.uv0;
                float2 node_7367 = (node_4610+float2(_node_3788.r,_node_3788.g));
                float2 node_4643 = float2(_node_3788.b,_node_3788.a);
                float2 shapeWorldMaps = lerp( uVS, (node_7367/(node_4643*float2(10,10))), _ShapeWorldMapping );
                float2 node_8542 = shapeWorldMaps;
                float4 _DepthMap_var = tex2Dlod(_DepthMap,float4(TRANSFORM_TEX(node_8542, _DepthMap),0.0,_ShoreSoftness));
                float4 _NoiseShaping2_var = tex2D(_NoiseShaping2,TRANSFORM_TEX(i.uv0, _NoiseShaping2));
                float4 _ShoreDepthMap_var = tex2D(_ShoreDepthMap,TRANSFORM_TEX(i.uv0, _ShoreDepthMap));
                float node_6191 = (((_DepthMap_var.r+_DepthMap_var.g+_DepthMap_var.b+((_NoiseShaping2_var.g*2.0+-1.0)*_AddNoise))/4.0)+(_ShoreDepthMap_var.r*_node_7396)); // DecompressedDepth
                float node_4312 = (node_6191*_InternalsTerrainHeight); // StartRemapDepth
                float node_3141 = saturate(smoothstep( _WaterHeight, 1.0, node_4312 ));
                float4 _FlowMap_var = tex2Dlod(_FlowMap,float4(TRANSFORM_TEX(i.uv0, _FlowMap),0.0,_FlowMapSmoothing));
                float2 node_1390 = LinearToGamma( _FlowMap_var.rgb ).rg;
                float2 node_1604 = (((float2(node_1390.g,node_1390.r)*2.0)-1.0)*_FlowPower); // flowVector
                float4 node_9483 = _Time + _TimeEditor;
                float node_9770 = (node_9483.r*_FlowSpeed); // timeScale
                float node_3611 = frac(node_9770); // phaseX
                fixed2 node_5193 = (i.uv0-(node_1604*float2(node_3611,node_3611))); // UV1
                float3 _node_9429 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_5193, _WaveBump2))); // c1
                float node_2243 = frac((node_9770+0.5)); // phasey
                fixed2 node_285 = (i.uv0-(node_1604*float2(node_2243,node_2243))); // UV2
                float3 _node_3036 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_285, _WaveBump2))); // c2
                float node_3828 = 0.5;
                float3 flowMapGrayscale = lerp(_node_9429.rgb,_node_3036.rgb,(abs((node_3828-node_3611))/node_3828));
                float MaterialsMask = saturate((1.0 - smoothstep( _WaterHeight, (_WaterHeight+_ShoreTranz), (node_4312+(flowMapGrayscale.r*0.04+-0.03)) )));
                float2 node_3463 = (node_3141*(_HeightDepth - 1.0)*mul(tangentTransform, viewDirection).xy + lerp(node_8609,(node_8609+((_BumpMap2.r*_Refraction)*node_3141)),MaterialsMask));
                float2 ParalaxUV = node_3463.rg;
                float2 node_8002 = ParalaxUV;
                float3 _ShoreNormal_var = UnpackNormal(tex2D(_ShoreNormal,TRANSFORM_TEX(node_8002, _ShoreNormal)));
                float3 node_9521 = float3(0,0,1);
                float WeetZoneMask = (1.0 - smoothstep( _WetHeight_copy, (_WetHeight_copy+_WetzoneTranz), node_4312 ));
                float node_3816 = (WeetZoneMask*_WetZoneMultiply);
                half2 node_7747 = (WorldMapping+(float2(-0.6,0.6)*node_7677));
                float3 _node_591 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_7747, _BumpMap)));
                float4 node_5691 = _Time + _TimeEditor;
                float2 node_8049 = (uVS+node_5691.g*float2(-0.001,0.001));
                float4 _windNoiseTex_var = tex2D(_windNoiseTex,TRANSFORM_TEX(node_8049, _windNoiseTex));
                float3 NormalWaterUnflowed = lerp((1.0-(1.0-_BumpMap2.rgb)*(1.0-_node_591.rgb)),float3(0,0,1),(_WaveNormalStrenght-pow((_windNoiseTex_var.r*_WindZoneDisturbance),_WindZone_Power)));
                float3 node_594 = NormalWaterUnflowed;
                float3 node_8565 = lerp(node_594,flowMapGrayscale,_FlowNormalPower);
                float node_978 = 0.0;
                float node_5542 = smoothstep( (_WaterHeight+_ShoreWAvesOffset), 1.0, node_4312 );
                float GlobalSpeed = node_7677;
                float node_6881 = ((node_5542*50.0)+GlobalSpeed);
                float2 node_5844 = WorldMapping;
                float4 _NoiseShaping_var = tex2D(_NoiseShaping,TRANSFORM_TEX(node_5844, _NoiseShaping));
                float2 node_4807 = (float2(_WaveShape,node_6881)+(_NoiseShaping_var.r*_ShoreWaveStrength));
                float4 _node_398_var = tex2D(_node_398,TRANSFORM_TEX(node_4807, _node_398));
                float node_8697 = MaterialsMask;
                float node_7233 = saturate((node_5542*_WaveExtension));
                float WaveReturn = lerp(lerp(node_978,_node_398_var.a,node_8697),node_978,node_7233);
                float node_3658 = WaveReturn;
                float3 NormalFinal = lerp(lerp(_ShoreNormal_var.rgb,node_9521,saturate(node_3816)),lerp(node_8565,node_9521,node_3658),MaterialsMask);
                float3 normalLocal = NormalFinal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float2 node_3535 = ParalaxUV;
                float4 _ShoreGloss_var = tex2D(_ShoreGloss,TRANSFORM_TEX(node_3535, _ShoreGloss));
                float node_3898 = distance(_WorldSpaceCameraPos,i.posWorld.rgb);
                float node_4390 = node_3898;
                float node_7415 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelDisturbanceFactor);
                float gloss = saturate(lerp(lerp((_ShoreGloss_var.r*_ShoreGlossValue),_WetZoneGloss,WeetZoneMask),clamp(((1.0 - ((node_4390*_fresnel_influence2)+_fresnel_influence3))-(saturate((_Gloss*MaterialsMask*node_7415))*(clamp((1.0 - (node_4390*_fresnel_influence1)),0.5,0.7)-_windNoiseTex_var.r))),_DistanceGlossMin,1.0),MaterialsMask).r);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = saturate(((_Metallic*MaterialsMask)+node_7415));
                float specularMonochrome;
                float2 node_6960 = ParalaxUV;
                float DecompressedDepth = node_6191;
                float3 SelfIllumination = (_SubsurfaceScatter.rgb*(1.0 - saturate((((1.0 - DecompressedDepth)*_SubsurfaceBlur)+_SubsurfaceFresnel)))); // Fresnel And Scattering
                float node_4890 = (SelfIllumination.rg.g*_Blur_coeff);
                float4 _ShoreTex_var = tex2Dlod(_ShoreTex,float4(TRANSFORM_TEX(node_6960, _ShoreTex),0.0,node_4890));
                float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(node_3463.rg, _MainTex),0.0,node_4890));
                float depthMapWater = node_3141;
                float node_9324 = depthMapWater;
                float node_6194 = WaveReturn;
                float node_3409 = (node_6194*_ShoreWaveIllum);
                float3 diffuseColor = saturate((lerp(_ShoreTex_var.rgb,(((_MainTex_var.rgb*_Color.rgb)-lerp(float3(0,0,0),(1.0 - _Depthcolor.rgb),node_9324))-(node_9324*0.1)),MaterialsMask)+(SelfIllumination*1.0)+node_3409)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _DepthMap; uniform float4 _DepthMap_ST;
            uniform float _HeightDepth;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Refraction;
            uniform float _InternalsTerrainHeight;
            uniform float _GlobalWaveSpeed;
            uniform fixed _ShoreSoftness;
            uniform sampler2D _ShoreTex; uniform float4 _ShoreTex_ST;
            uniform float _WorldMappinScale;
            uniform float _SubsurfaceBlur;
            uniform half4 _SubsurfaceScatter;
            uniform float _SubsurfaceFresnel;
            uniform float _FresnelDisturbanceFactor;
            uniform sampler2D _windNoiseTex; uniform float4 _windNoiseTex_ST;
            uniform sampler2D _ShoreGloss; uniform float4 _ShoreGloss_ST;
            uniform float _ShoreTranz;
            uniform float _WaterHeight;
            uniform float _WetzoneTranz;
            uniform float _WetHeight_copy;
            uniform float _WetZoneGloss;
            uniform float _Blur_coeff;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _WaveBump2; uniform float4 _WaveBump2_ST;
            uniform float _FlowMapSmoothing;
            uniform float _DistanceGlossMin;
            uniform float4 _Depthcolor;
            uniform float _ShoreGlossValue;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            float3 LinearToGamma( float3 inC ){
            #if !UNITY_COLORSPACE_GAMMA
            inC = LinearToGammaSpace(inC);
            return inC;
            #endif
            
            }
            
            uniform float _fresnel_influence1;
            uniform float _fresnel_influence2;
            uniform float _fresnel_influence3;
            uniform sampler2D _ShoreDepthMap; uniform float4 _ShoreDepthMap_ST;
            uniform float _node_7396;
            uniform float _ShoreWAvesOffset;
            uniform float _WaveExtension;
            uniform float _ShoreWaveIllum;
            uniform sampler2D _node_398; uniform float4 _node_398_ST;
            uniform float _WaveShape;
            uniform sampler2D _NoiseShaping; uniform float4 _NoiseShaping_ST;
            uniform float _ShoreWaveStrength;
            uniform sampler2D _NoiseShaping2; uniform float4 _NoiseShaping2_ST;
            uniform float _AddNoise;
            uniform fixed _ShapeWorldMapping;
            uniform float4 _node_3788;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float2 node_4610 = float2(i.posWorld.r,i.posWorld.b);
                fixed2 WorldMapping = (node_4610*_WorldMappinScale);
                float2 node_8609 = WorldMapping;
                float4 node_2872 = _Time + _TimeEditor;
                float node_7677 = (_GlobalWaveSpeed*node_2872.g);
                float2 node_9935 = (WorldMapping+node_7677);
                float3 _BumpMap2 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9935, _BumpMap)));
                float2 uVS = i.uv0;
                float2 node_7367 = (node_4610+float2(_node_3788.r,_node_3788.g));
                float2 node_4643 = float2(_node_3788.b,_node_3788.a);
                float2 shapeWorldMaps = lerp( uVS, (node_7367/(node_4643*float2(10,10))), _ShapeWorldMapping );
                float2 node_8542 = shapeWorldMaps;
                float4 _DepthMap_var = tex2Dlod(_DepthMap,float4(TRANSFORM_TEX(node_8542, _DepthMap),0.0,_ShoreSoftness));
                float4 _NoiseShaping2_var = tex2D(_NoiseShaping2,TRANSFORM_TEX(i.uv0, _NoiseShaping2));
                float4 _ShoreDepthMap_var = tex2D(_ShoreDepthMap,TRANSFORM_TEX(i.uv0, _ShoreDepthMap));
                float node_6191 = (((_DepthMap_var.r+_DepthMap_var.g+_DepthMap_var.b+((_NoiseShaping2_var.g*2.0+-1.0)*_AddNoise))/4.0)+(_ShoreDepthMap_var.r*_node_7396)); // DecompressedDepth
                float node_4312 = (node_6191*_InternalsTerrainHeight); // StartRemapDepth
                float node_3141 = saturate(smoothstep( _WaterHeight, 1.0, node_4312 ));
                float4 _FlowMap_var = tex2Dlod(_FlowMap,float4(TRANSFORM_TEX(i.uv0, _FlowMap),0.0,_FlowMapSmoothing));
                float2 node_1390 = LinearToGamma( _FlowMap_var.rgb ).rg;
                float2 node_1604 = (((float2(node_1390.g,node_1390.r)*2.0)-1.0)*_FlowPower); // flowVector
                float4 node_9483 = _Time + _TimeEditor;
                float node_9770 = (node_9483.r*_FlowSpeed); // timeScale
                float node_3611 = frac(node_9770); // phaseX
                fixed2 node_5193 = (i.uv0-(node_1604*float2(node_3611,node_3611))); // UV1
                float3 _node_9429 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_5193, _WaveBump2))); // c1
                float node_2243 = frac((node_9770+0.5)); // phasey
                fixed2 node_285 = (i.uv0-(node_1604*float2(node_2243,node_2243))); // UV2
                float3 _node_3036 = UnpackNormal(tex2D(_WaveBump2,TRANSFORM_TEX(node_285, _WaveBump2))); // c2
                float node_3828 = 0.5;
                float3 flowMapGrayscale = lerp(_node_9429.rgb,_node_3036.rgb,(abs((node_3828-node_3611))/node_3828));
                float MaterialsMask = saturate((1.0 - smoothstep( _WaterHeight, (_WaterHeight+_ShoreTranz), (node_4312+(flowMapGrayscale.r*0.04+-0.03)) )));
                float2 node_3463 = (node_3141*(_HeightDepth - 1.0)*mul(tangentTransform, viewDirection).xy + lerp(node_8609,(node_8609+((_BumpMap2.r*_Refraction)*node_3141)),MaterialsMask));
                float2 ParalaxUV = node_3463.rg;
                float2 node_6960 = ParalaxUV;
                float DecompressedDepth = node_6191;
                float3 SelfIllumination = (_SubsurfaceScatter.rgb*(1.0 - saturate((((1.0 - DecompressedDepth)*_SubsurfaceBlur)+_SubsurfaceFresnel)))); // Fresnel And Scattering
                float node_4890 = (SelfIllumination.rg.g*_Blur_coeff);
                float4 _ShoreTex_var = tex2Dlod(_ShoreTex,float4(TRANSFORM_TEX(node_6960, _ShoreTex),0.0,node_4890));
                float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(node_3463.rg, _MainTex),0.0,node_4890));
                float depthMapWater = node_3141;
                float node_9324 = depthMapWater;
                float node_978 = 0.0;
                float node_5542 = smoothstep( (_WaterHeight+_ShoreWAvesOffset), 1.0, node_4312 );
                float GlobalSpeed = node_7677;
                float node_6881 = ((node_5542*50.0)+GlobalSpeed);
                float2 node_5844 = WorldMapping;
                float4 _NoiseShaping_var = tex2D(_NoiseShaping,TRANSFORM_TEX(node_5844, _NoiseShaping));
                float2 node_4807 = (float2(_WaveShape,node_6881)+(_NoiseShaping_var.r*_ShoreWaveStrength));
                float4 _node_398_var = tex2D(_node_398,TRANSFORM_TEX(node_4807, _node_398));
                float node_8697 = MaterialsMask;
                float node_7233 = saturate((node_5542*_WaveExtension));
                float WaveReturn = lerp(lerp(node_978,_node_398_var.a,node_8697),node_978,node_7233);
                float node_6194 = WaveReturn;
                float node_3409 = (node_6194*_ShoreWaveIllum);
                float3 diffColor = saturate((lerp(_ShoreTex_var.rgb,(((_MainTex_var.rgb*_Color.rgb)-lerp(float3(0,0,0),(1.0 - _Depthcolor.rgb),node_9324))-(node_9324*0.1)),MaterialsMask)+(SelfIllumination*1.0)+node_3409));
                float specularMonochrome;
                float3 specColor;
                float node_7415 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelDisturbanceFactor);
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, saturate(((_Metallic*MaterialsMask)+node_7415)), specColor, specularMonochrome );
                float2 node_3535 = ParalaxUV;
                float4 _ShoreGloss_var = tex2D(_ShoreGloss,TRANSFORM_TEX(node_3535, _ShoreGloss));
                float WeetZoneMask = (1.0 - smoothstep( _WetHeight_copy, (_WetHeight_copy+_WetzoneTranz), node_4312 ));
                float node_3898 = distance(_WorldSpaceCameraPos,i.posWorld.rgb);
                float node_4390 = node_3898;
                float4 node_6928 = _Time + _TimeEditor;
                float2 node_8049 = (uVS+node_6928.g*float2(-0.001,0.001));
                float4 _windNoiseTex_var = tex2D(_windNoiseTex,TRANSFORM_TEX(node_8049, _windNoiseTex));
                float roughness = 1.0 - saturate(lerp(lerp((_ShoreGloss_var.r*_ShoreGlossValue),_WetZoneGloss,WeetZoneMask),clamp(((1.0 - ((node_4390*_fresnel_influence2)+_fresnel_influence3))-(saturate((_Gloss*MaterialsMask*node_7415))*(clamp((1.0 - (node_4390*_fresnel_influence1)),0.5,0.7)-_windNoiseTex_var.r))),_DistanceGlossMin,1.0),MaterialsMask).r);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
