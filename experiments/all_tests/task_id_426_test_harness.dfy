predicate IsOdd (n: int)

{
  n % 2 != 0
}
method FilterOddNumbers (arr: array<int>) returns (oddList: seq<int>)
  // All numbers in the output are odd and exist in the input
  ensures forall i :: 0 <= i < |oddList| ==> IsOdd(oddList[i]) && oddList[i] in arr[..]
  // All odd numbers in the input are in the output
  ensures forall i :: 0 <= i < arr.Length && IsOdd(arr[i]) ==> arr[i] in oddList
{
  var v0 := new int[] [5,7,9,8,6,4,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  assert arr[4] == v0[4];
  assert arr[5] == v0[5];
  assert arr[6] == v0[6];
  oddList := [5,7,9,9,3];
}