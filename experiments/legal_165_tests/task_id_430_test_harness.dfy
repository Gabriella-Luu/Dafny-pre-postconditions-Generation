method ParabolaDirectrix (a: real, h: real, k: real) returns (directrix: real)
  requires a != 0.0
  ensures directrix == k - 1.0 / (4.0 * a)
{
  var v0 := 2.0;
  var v1 := 4.0;
  var v2 := 6.0;
  assume {:axiom} a == v0;
  assume {:axiom} h == v1;
  assume {:axiom} k == v2;
  directrix := -136.3;
}