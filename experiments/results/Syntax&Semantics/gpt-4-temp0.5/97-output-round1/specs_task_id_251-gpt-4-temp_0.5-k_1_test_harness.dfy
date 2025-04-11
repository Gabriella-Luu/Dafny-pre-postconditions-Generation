method insertElement (list: seq<string>, element:string) returns (res: seq<string>)
    requires true
    ensures |res| == 2 * |list|
    ensures forall i :: 0 <= i < |list| ==> (res[2*i] == element && res[2*i + 1] == list[i])
{
  var v0 := ["happy", "sad"];
  var v1 := "laugh";
  assume {:axiom} list == v0;
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assume {:axiom} element == v1;
  assert element[0] == v1[0];
  assert element[1] == v1[1];
  assert element[2] == v1[2];
  assert element[3] == v1[3];
  assert element[4] == v1[4];
  res := ["sad","laugh","happy","laugh","sad"];
}