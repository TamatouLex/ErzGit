

vertex_begin(vb,vf)
var _vb = vb;
with(objBlock)
{
scr_lightEngineQuad(_vb,x,y,x+sprite_width,y+sprite_height)
scr_lightEngineQuad(_vb,x+sprite_width,y,x,y+sprite_height)


}
vertex_end(vb)

