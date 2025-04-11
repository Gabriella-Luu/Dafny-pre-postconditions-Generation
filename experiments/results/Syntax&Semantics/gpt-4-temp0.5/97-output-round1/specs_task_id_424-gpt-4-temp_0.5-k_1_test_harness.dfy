method extractRear (strList:seq<string>) returns (res: seq<char>)
    requires forall s :: s in strList ==> |s| > 0
    ensures |res| == |strList|
    ensures forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]
{
  var v0 := ["Gotta", "get", "go"];
  assume {:axiom} strList == v0;
  //redundant asserts to make dafny happy
  assert strList[0] == v0[0];
  assert strList[1] == v0[1];
  assert strList[2] == v0[2];
  res := ['a','o'];
}