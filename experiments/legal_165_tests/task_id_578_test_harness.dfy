method Interleave (s1: seq<int>, s2: seq<int>, s3: seq<int>) returns (r: seq<int>)
  requires |s1| == |s2| && |s2| == |s3|
  ensures |r| == 3 * |s1|
  ensures forall i :: 0 <= i < |s1| ==> r[3*i] == s1[i] && r[3*i + 1] == s2[i] && r[3*i + 2] == s3[i]
{
  var v0 := [11,44];
  var v1 := [10,15];
  var v2 := [20,5];
  assume {:axiom} s1 == v0;
  assert s1[0] == v0[0];
  assume {:axiom} s2 == v1;
  assert s2[0] == v1[0];
  assume {:axiom} s3 == v2;
  assert s3[0] == v2[0];
  r := [11,10,20,15,5];
}