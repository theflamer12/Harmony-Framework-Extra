varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D u_sPalette;
uniform vec4 u_vPalcoords;
uniform vec2 u_vSize;
uniform float u_fIndex;
uniform float u_fTolerance;

void main()
{
	vec4 vTextureColour = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 vOutputColour = vTextureColour;
	vec4 vTestColour;
	for ( float fX = u_vPalcoords.x; fX < u_vPalcoords.z; fX += u_vSize.x )
	{
		vTestColour = texture2D( u_sPalette, vec2( fX, u_vPalcoords.y ));
		if( distance( vTextureColour, vTestColour ) <= u_fTolerance)
		{				
			vec2 vTestPos = vec2(fX, u_vPalcoords.y + u_vSize.y * floor(u_fIndex + 1.0));
			
			vOutputColour = mix(texture2D(u_sPalette, vec2(fX, u_vPalcoords.y + u_vSize.y * floor(u_fIndex))), texture2D(u_sPalette, vec2(vTestPos)), fract(u_fIndex));
		}
	}
	gl_FragColor = v_vColour * vOutputColour;
}
