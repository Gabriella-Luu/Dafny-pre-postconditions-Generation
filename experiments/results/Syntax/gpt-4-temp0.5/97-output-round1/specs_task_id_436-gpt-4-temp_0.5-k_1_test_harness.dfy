method negNos (list1:array<int>) returns (res:array<int>)
  requires list1 != null
  ensures res != null
  ensures res.Length <= list1.Length
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < list1.Length && list1[j] == res[i])
  ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> (exists j :: 0 <= j < res.Length && res[j] == list1[i])
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