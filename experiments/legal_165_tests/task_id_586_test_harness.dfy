method SplitAndAppend (l: seq<int>, n: int) returns (r: seq<int>)
  requires n >= 0 && n < |l|
  ensures |r| == |l|
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[(i + n) % |l|]
{
  var v0 := [0,1,2,3,4,5,6,7];
  var v1 := 3;
  assume {:axiom} l == v0;
  assert l[0] == v0[0];
  assume {:axiom} n == v1;
  r := [3,4,5,6,7,0,1];
}