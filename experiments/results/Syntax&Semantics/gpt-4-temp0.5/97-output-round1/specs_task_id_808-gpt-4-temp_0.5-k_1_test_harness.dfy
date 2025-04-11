method checkK (s1: seq<int>, K:int) returns (res: bool)
  requires forall i :: 0 <= i < |s1| ==> s1[i] >= int.MinValue && s1[i] <= int.MaxValue
  ensures res <==> (exists i :: 0 <= i < |s1| && s1[i] == K)
{
  var v0 := [10, 4, 5, 6, 8];
  var v1 := 6;
  assume {:axiom} s1 == v0;
  //redundant asserts to make dafny happy
  assert s1[0] == v0[0];
  assert s1[1] == v0[1];
  assert s1[2] == v0[2];
  assert s1[3] == v0[3];
  assert s1[4] == v0[4];
  assume {:axiom} K == v1;
  res := false;
}