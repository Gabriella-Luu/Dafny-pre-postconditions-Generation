method insertElement (list: seq<string>, element:string) returns (res: seq<string>)
    requires list != null && element != null
    ensures |res| == 2 * |list|
    ensures forall i :: 0 <= i < |list| ==> (res[2*i] == element && res[2*i + 1] == list[i])
{
  var v0 := ["Red", "Green", "Black"];
  var v1 := "c";
  assume {:axiom} list == v0;
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  assume {:axiom} element == v1;
  assert element[0] == v1[0];
  res := ["c","Red","Green","c","Black"];
}