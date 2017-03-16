Shader "Unlit/Transparent Colored"
{
	Properties
	{
		_MainTex ("Base (RGB), Alpha (A)", 2D) = "black" {}
		[MaterialToggle]_EnableRounded("Enable Rounded", Float) = 0
		_Radius("Radius", Float) = 0.2
	}
	
	SubShader
	{
		LOD 200

		Tags
		{
			"Queue" = "Transparent"
			"IgnoreProjector" = "True"
			"RenderType" = "Transparent"
		}
		
		Pass
		{
			Cull Off
			Lighting Off
			ZWrite Off
			Fog { Mode Off }
			Offset -1, -1
			Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag			
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float _Radius;
			float _EnableRounded;
	
			struct appdata_t
			{
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
				fixed4 color : COLOR;
			};
	
			struct v2f
			{
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
				fixed4 color : COLOR;
				float2 rounded_texcoord : TEXCOORD2;
			};
	
			v2f o;

			v2f vert (appdata_t v)
			{
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.texcoord = v.texcoord;
				o.color = v.color;
				o.rounded_texcoord = v.texcoord - float2(0.5, 0.5);
				return o;
			}
				
			fixed4 frag (v2f IN) : COLOR
			{
				fixed4 col;
			
				if (_EnableRounded == 1){

					if (abs(IN.rounded_texcoord.x)<0.5 - _Radius || abs(IN.rounded_texcoord.y)<0.5 - _Radius)
					{
					
						col = tex2D(_MainTex, IN.texcoord)* IN.color;
					}
					else
					{

						if (length(abs(IN.rounded_texcoord) - float2(0.5 - _Radius, 0.5 - _Radius)) <_Radius)
						{
							col = tex2D(_MainTex, IN.texcoord)* IN.color;

						}
						else
						{
							discard;
						}
					}
				}
				else
				{
					col = tex2D(_MainTex, IN.texcoord) * IN.color;
				}
				if (IN.color.r == 0 && IN.color.g == 0 && IN.color.b == 0)
				{
					col = tex2D(_MainTex, IN.texcoord);
					float grey = dot(col.rgb, float3(0.299, 0.587, 0.114));
					col.rgb = float3(grey, grey, grey);
				}
				return col;
			}
			ENDCG
		}
	}

	SubShader
	{
		LOD 100

		Tags
		{
			"Queue" = "Transparent"
			"IgnoreProjector" = "True"
			"RenderType" = "Transparent"
		}
		
		Pass
		{
			Cull Off
			Lighting Off
			ZWrite Off
			Fog { Mode Off }
			Offset -1, -1
			ColorMask RGB
			Blend SrcAlpha OneMinusSrcAlpha
			ColorMaterial AmbientAndDiffuse
			
			SetTexture [_MainTex]
			{
				Combine Texture * Primary
			}
		}
	}
}
