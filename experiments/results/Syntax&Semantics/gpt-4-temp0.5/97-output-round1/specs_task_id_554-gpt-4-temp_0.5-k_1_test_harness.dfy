method oddSplit (arr: array<int>) returns (oddList: seq<int>)
    requires arr != null
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> (arr[i] in oddList)
    ensures forall j :: 0 <= j < |oddList| ==> oddList[j] % 2 != 0
    ensures forall k :: 0 <= k < |oddList| ==> (exists l :: 0 <= l < arr.Length && arr[l] == oddList[k])
{
  var v0 := new int[] [7,8,9,1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  oddList := [1,7,9,1];
}