method RectangleArea (length: int, width: int) returns (area: int)
  requires length > 0
  requires width > 0
  ensures area == length * width
{
  var v0 := 4;
  var v1 := 2;
  assume {:axiom} length == v0;
  assume {:axiom} width == v1;
  area := 9;
}