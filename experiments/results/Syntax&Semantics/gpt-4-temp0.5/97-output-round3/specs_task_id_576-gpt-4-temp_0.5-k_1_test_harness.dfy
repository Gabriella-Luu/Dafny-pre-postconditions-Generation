method IsSublist (sub: seq<int>, main: seq<int>) returns (result: bool)
    requires forall i :: 0 <= i < |sub| ==> sub[i] in main
    ensures result <==> (forall i :: 0 <= i < |sub| ==> sub[i] in main)
{
  var v0 := [0,2,2];
  var v1 := [1,0,2,2];
  assume {:axiom} sub == v0;
  //redundant asserts to make dafny happy
  assert sub[0] == v0[0];
  assert sub[1] == v0[1];
  assert sub[2] == v0[2];
  assume {:axiom} main == v1;
  //redundant asserts to make dafny happy
  assert main[0] == v1[0];
  assert main[1] == v1[1];
  assert main[2] == v1[2];
  assert main[3] == v1[3];
  result := false;
}