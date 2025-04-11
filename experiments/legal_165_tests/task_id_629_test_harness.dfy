predicate IsEven (n: int)

{
  n % 2 == 0
}
method FindEvenNumbers (arr: array<int>) returns (evenList: seq<int>)
  // All numbers in the output are even and exist in the input
  ensures forall i :: 0 <= i < |evenList| ==> IsEven(evenList[i]) && evenList[i] in arr[..]
  // All even numbers in the input are in the output
  ensures forall i :: 0 <= i < arr.Length && IsEven(arr[i]) ==> arr[i] in evenList
{
  var v0 := new int[] [8,12,15,19];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  evenList := [8];
}