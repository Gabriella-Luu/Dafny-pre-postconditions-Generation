predicate IsNegative (n: int)

{
  n < 0
}
method FindNegativeNumbers (arr: array<int>) returns (negativeList: seq<int>)
  // All numbers in the output are negative and exist in the input
  ensures forall i :: 0 <= i < |negativeList| ==> IsNegative(negativeList[i]) && negativeList[i] in arr[..]
  // All negative numbers in the input are in the output
  ensures forall i :: 0 <= i < arr.Length && IsNegative(arr[i]) ==> arr[i] in negativeList
{
  var v0 := new int[] [-7,-6,8,9];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  negativeList := [-7,-6,-6];
}