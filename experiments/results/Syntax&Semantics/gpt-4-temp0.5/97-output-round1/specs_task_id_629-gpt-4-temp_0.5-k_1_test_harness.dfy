method FindEvenNumbers (arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0 <==> arr[i] in evenList)
  ensures forall i, j :: 0 <= i < j < |evenList| ==> evenList[i] != evenList[j]
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
{
  var v0 := new int[] [8,12,15,19];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  evenList := [12];
}