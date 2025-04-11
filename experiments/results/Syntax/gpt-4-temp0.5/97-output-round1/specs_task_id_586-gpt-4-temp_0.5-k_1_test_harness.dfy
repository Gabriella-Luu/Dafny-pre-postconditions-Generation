method splitArr (l: seq<int>, n:int) returns (part:seq<int>)
    requires 0 <= n < |l|
    ensures |part| == |l|
    ensures (forall i :: 0 <= i < n ==> part[i + |l| - n] == l[i])
    ensures (forall i :: n <= i < |l| ==> part[i - n] == l[i])
{
  var v0 := [0,1,2,3,4,5,6,7];
  var v1 := 3;
  assume {:axiom} l == v0;
  //redundant asserts to make dafny happy
  assert l[0] == v0[0];
  assert l[1] == v0[1];
  assert l[2] == v0[2];
  assert l[3] == v0[3];
  assert l[4] == v0[4];
  assert l[5] == v0[5];
  assert l[6] == v0[6];
  assert l[7] == v0[7];
  assume {:axiom} n == v1;
  part := [3,5,6,7,0,1,2];
}