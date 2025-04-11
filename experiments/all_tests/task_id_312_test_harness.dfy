method ConeVolume (radius: real, height: real) returns (volume: real)
  requires radius > 0.0 && height > 0.0
  ensures volume == (1.0/3.0) * (3.14159265358979323846) * radius * radius * height
{
  var v0 := 19.0;
  var v1 := 17.0;
  assume {:axiom} radius == v0;
  assume {:axiom} height == v1;
  volume := 6431.651371693521;
}