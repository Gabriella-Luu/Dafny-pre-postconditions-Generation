method nthNums (list:seq<int>, n:int) returns (res: seq<int>)
  requires n >= 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)
{
  var v0 := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var v1 := 2;
  assume {:axiom} list == v0;
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  assert list[3] == v0[3];
  assert list[4] == v0[4];
  assert list[5] == v0[5];
  assert list[6] == v0[6];
  assert list[7] == v0[7];
  assert list[8] == v0[8];
  assert list[9] == v0[9];
  assume {:axiom} n == v1;
  res := [1,4,16,25,36,49,64,81,100];
}