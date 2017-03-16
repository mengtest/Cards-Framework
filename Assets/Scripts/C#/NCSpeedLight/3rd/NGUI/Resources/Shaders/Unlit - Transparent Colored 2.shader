Shader "Hidden/Unlit/Transparent Colored 2"
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
			Offset -1, -1
			Fog { Mode Off }
			ColorMask RGB
			Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float _Radius;
			float _EnableRounded;

			float4 _ClipRange0 = float4(0.0, 0.0, 1.0, 1.0);
			float4 _ClipArgs0 = float4(1000.0, 1000.0, 0.0, 1.0);
			float4 _ClipRange1 = float4(0.0, 0.0, 1.0, 1.0);
			float4 _ClipArgs1 = float4(1000.0, 1000.0, 0.0, 1.0);

			struct appdata_t
			{
				float4 vertex : POSITION;
				half4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : POSITION;
				half4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				float4 worldPos : TEXCOORD1;
				float2 rounded_texcoord : TEXCOORD2;
			};

			float2 Rotate (float2 v, float2 rot)
			{
				float2 ret;
				ret.x = v.x * rot.y - v.y * rot.x;
				ret.y = v.x * rot.x + v.y * rot.y;
				return ret;
			}

			v2f o;

			v2f vert (appdata_t v)
			{
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.color = v.color;
				o.texcoord = v.texcoord;
				o.worldPos.xy = v.vertex.xy * _ClipRange0.zw + _ClipRange0.xy;
				o.worldPos.zw = Rotate(v.vertex.xy, _ClipArgs1.zw) * _ClipRange1.zw + _ClipRange1.xy;
				o.rounded_texcoord = v.texcoord - float2(0.5, 0.5);
				return o;
			}

			half4 frag (v2f IN) : COLOR
			{
				// First clip region
				float2 factor = (float2(1.0, 1.0) - abs(IN.worldPos.xy)) * _ClipArgs0.xy;
				float f = min(factor.x, factor.y);

				// Second clip region
				factor = (float2(1.0, 1.0) - abs(IN.worldPos.zw)) * _ClipArgs1.xy;
				f = min(f, min(factor.x, factor.y));

				// Sample the texture
				half4 col;
				if (_EnableRounded == 1){
					if (abs(IN.rounded_texcoord.x)<0.5 - _Radius || abs(IN.rounded_texcoord.y)<0.5 - _Radius)
					{
						col = tex2D(_MainTex, IN.texcoord);
					}
					else
					{

						if (length(abs(IN.rounded_texcoord) - float2(0.5 - _Radius, 0.5 - _Radius)) <_Radius)
						{
							col = tex2D(_MainTex, IN.texcoord);

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
				col.a *= clamp(f, 0.0, 1.0);
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
