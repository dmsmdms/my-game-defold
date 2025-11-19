#version 140

in mediump vec2 var_texcoord0;
in mediump vec4 var_color;

out vec4 out_fragColor;

uniform mediump sampler2D texture_sampler;

void main()
{
	lowp vec4 topColor = vec4(0.208, 0.208, 0.208, 1.0);
	lowp vec4 bottomColor = vec4(0.1, 0.1, 0.1, 1.0);
	out_fragColor = mix(bottomColor, topColor, var_texcoord0.y);
}
