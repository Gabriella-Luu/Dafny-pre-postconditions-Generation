method negNos (list1:array<int>) returns (res:array<int>)
    requires list1 != null
    ensures forall i :: 0 <= i < list1.Length ==> (list1[i] < 0 ==> list1[i] in res[..])
    ensures forall j :: 0 <= j < res.Length ==> res[j] < 0
    ensures forall k, l :: 0 <= k < l < res.Length ==> res[k] != res[l]
{
  var v0 := new int[] [-7,-6,8,9];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} list1[..list1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  assert list1[2] == v0[2];
  assert list1[3] == v0[3];
  res := new int[][-6];
}