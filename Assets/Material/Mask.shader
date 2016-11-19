Shader "Custom/Mask" {
	Properties 
	{
		_MainTex ("Main Texture", 2D) = "white" {}
		_Mask("Mask Texture",2D)="white"{}
	}
	SubShader 
	{
		Tags{"Queue"="Transparent"}
		Lighting On
		Zwrite off
		Blend SrcAlpha OneMinusSrcAlpha
		pass
		{
			SetTexture[_Mask]{combine texture}
			SetTexture[_MainTex]{combine texture,previous}
		}
	}
}