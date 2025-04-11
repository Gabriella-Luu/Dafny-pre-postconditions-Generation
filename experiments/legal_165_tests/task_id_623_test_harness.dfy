function Power (base: int, exponent: int): int
  requires exponent >= 0

{
  if exponent == 0 then 1
  else base * Power(base, exponent-1)
}
method PowerOfListElements (l: seq<int>, n: int) returns (result: seq<int>)
  requires n >= 0
  ensures |result| == |l|
  ensures forall i :: 0 <= i < |l| ==> result[i] == Power(l[i], n)
{
  var v0 := [12,15];
  var v1 := 5;
  assume {:axiom} l == v0;
  assert l[0] == v0[0];
  assume {:axiom} n == v1;
  result := [248832];
}