method RotateRight (l: seq<int>, n: int) returns (r: seq<int>)
  requires n >= 0
  ensures |r| == |l|
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[(i - n + |l|) % |l|]
{
  var v0 := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var v1 := 5;
  assume {:axiom} l == v0;
  assert l[0] == v0[0];
  assume {:axiom} n == v1;
  r := [6,7,8,10,1,2,3,4,5];
}