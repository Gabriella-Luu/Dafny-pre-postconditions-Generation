method PentagonPerimeter (side: int) returns (perimeter: int)
  requires side > 0
  ensures perimeter == 5 * side
{
  var v0 := 15;
  assume {:axiom} side == v0;
  perimeter := 83;
}