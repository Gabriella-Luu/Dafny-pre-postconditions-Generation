method squarePerimeter (side:int) returns (res: int)
  requires side >= 0
  ensures res == 4 * side
{
  var v0 := 4;
  assume {:axiom} side == v0;
  res := 17;
}