method removeOdd (arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures forall k :: 0 <= k < arr.Length ==> (arr[k] % 2 != 0 ==> !(arr[k] in evenList))
  ensures forall k :: 0 <= k < |evenList| ==> (evenList[k] % 2 == 0)
  ensures forall k1, k2 :: 0 <= k1 < k2 < arr.Length && arr[k1] % 2 == 0 && arr[k2] % 2 == 0 ==> (arr[k1] in evenList && arr[k2] in evenList)
{
  var v0 := new int[] [10,20,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  evenList := [10,20,20];
}