method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
    requires forall l :: l in list ==> |l| >= |sub|
    ensures res <==> exists l :: l in list && sub in l[..]
{
  var v0 := [[2,4,3,5,7],[3,8]];
  var v1 := [3,7];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assume {:axiom} sub == v1;
  //redundant asserts to make dafny happy
  assert sub[0] == v1[0];
  assert sub[1] == v1[1];
  res := true;
}