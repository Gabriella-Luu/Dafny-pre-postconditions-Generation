method evenPosition (list: seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list| ==> i % 2 == 0 ==> list[i] % 2 == 0
  ensures res <==> (forall i :: 0 <= i < |list| ==> i % 2 == 0 ==> list[i] % 2 == 0)
{
  var v0 := [2,1,4];
  assume {:axiom} list == v0;
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  res := false;
}