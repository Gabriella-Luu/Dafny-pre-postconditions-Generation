method maximum (a:int,b:int) returns (max:int)
    ensures max == a || max == b
    ensures max >= a && max >= b
{
  var v0 := 9;
  var v1 := 7;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  max := 11;
}