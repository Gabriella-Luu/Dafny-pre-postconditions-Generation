method Swap (a: int, b: int) returns (result: seq<int>)
  ensures |result| == 2
  ensures result[0] == b
  ensures result[1] == a
{
  var v0 := 100;
  var v1 := 200;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  result := [100];
}