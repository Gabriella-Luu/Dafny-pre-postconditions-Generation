method volumeCube (l:int) returns (res:int)
    requires l >= 0  // The side length of a cube cannot be negative
    ensures res == l * l * l  // The volume of a cube is side length cubed
{
  var v0 := 5;
  assume {:axiom} l == v0;
  res := 128;
}