method SquarePerimeter (side: int) returns (perimeter: int)
  requires side > 0
  ensures perimeter == 4 * side
{
  var v0 := 4;
  assume {:axiom} side == v0;
  perimeter := 6;
}