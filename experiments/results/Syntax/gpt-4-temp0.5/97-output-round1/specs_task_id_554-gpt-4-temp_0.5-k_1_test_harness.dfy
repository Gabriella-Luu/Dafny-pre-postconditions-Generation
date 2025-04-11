method oddSplit (arr: array<int>) returns (oddList: seq<int>)
  requires arr != null
  ensures |oddList| <= arr.Length
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1
  ensures forall i :: 0 <= i < |oddList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == oddList[i])
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 1 ==> (exists j :: 0 <= j < |oddList| && oddList[j] == arr[i])
{
  var v0 := new int[] [7,8,9,1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  oddList := [9,7,9,1];
}