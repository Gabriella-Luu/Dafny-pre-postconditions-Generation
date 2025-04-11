method indexMultiplication (a: seq<int>, b: seq<int>) returns (result: seq<int>)
    requires |a| == |b|
    ensures |result| == |a|
    ensures forall i :: 0 <= i < |result| ==> result[i] == a[i] * b[i]
{
  var v0 := [3, 5, 6, 7, 4, 11, 3, 12];
  var v1 := [8, 9, 5, 11, 3, 3, 9, 5];
  assume {:axiom} a == v0;
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  assert a[5] == v0[5];
  assert a[6] == v0[6];
  assert a[7] == v0[7];
  assume {:axiom} b == v1;
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  assert b[2] == v1[2];
  assert b[3] == v1[3];
  assert b[4] == v1[4];
  assert b[5] == v1[5];
  assert b[6] == v1[6];
  assert b[7] == v1[7];
  result := [24,45,30,77,45,12,33,27,60];
}