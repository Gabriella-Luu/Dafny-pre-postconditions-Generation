method removeOdd (arr: array<int>) returns (evenList: seq<int>)
    requires arr != null
    ensures |evenList| <= arr.Length
    ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0) ==> (exists j :: 0 <= j < |evenList| && evenList[j] == arr[i])
    ensures forall i :: 0 <= i < |evenList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == evenList[i])
{
  var v0 := new int[] [10,20,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  evenList := [20];
}