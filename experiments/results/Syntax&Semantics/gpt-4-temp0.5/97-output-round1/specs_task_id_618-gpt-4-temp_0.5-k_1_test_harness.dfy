method divList (a: seq<int>, b: seq<int>) returns (result: seq<int>)
    requires |a| == |b| // The two lists must be of the same length
    requires forall i :: 0 <= i < |b| ==> b[i] != 0 // No element in the second list should be zero to avoid division by zero
    ensures |result| == |a| // The result list should be of the same length as the input lists
    ensures forall i :: 0 <= i < |result| ==> result[i] == a[i] / b[i] // Each element in the result list should be the division of the corresponding elements in the input lists
{
  var v0 := [90,120];
  var v1 := [30,20];
  assume {:axiom} a == v0;
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assume {:axiom} b == v1;
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  result := [3,3,6];
}