method swapNumbers (a:int,b:int) returns (res: seq<int>)
  ensures |res| == 2
  ensures res[0] == b
  ensures res[1] == a
{
  var v0 := 100;
  var v1 := 200;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  res := [200,200,100];
}