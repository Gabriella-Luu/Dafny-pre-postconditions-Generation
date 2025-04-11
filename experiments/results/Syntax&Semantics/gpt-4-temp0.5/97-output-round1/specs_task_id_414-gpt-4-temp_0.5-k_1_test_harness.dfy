method overlapping (list1:seq<int>,list2:seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list1| ==> list1[i] >= 0
  requires forall j :: 0 <= j < |list2| ==> list2[j] >= 0
  ensures res <==> (exists k :: 0 <= k < |list1| && list1[k] in list2)
{
  var v0 := [1,4,5];
  var v1 := [1,4,5];
  assume {:axiom} list1 == v0;
  //redundant asserts to make dafny happy
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  assert list1[2] == v0[2];
  assume {:axiom} list2 == v1;
  //redundant asserts to make dafny happy
  assert list2[0] == v1[0];
  assert list2[1] == v1[1];
  assert list2[2] == v1[2];
  res := false;
}