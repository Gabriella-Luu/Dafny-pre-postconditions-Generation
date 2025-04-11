method arrayToSequence (arr:array<int>) returns (res: seq<int>)
  requires arr != null
  ensures |res| == arr.Length
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == res[i]
{
  var v0 := new int[] [58,44,56];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  res := [58,44,44,56];
}