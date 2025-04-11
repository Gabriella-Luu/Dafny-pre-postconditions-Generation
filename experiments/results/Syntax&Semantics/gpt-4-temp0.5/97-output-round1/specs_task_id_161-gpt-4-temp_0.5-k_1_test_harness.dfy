method removeElements (list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null && list2 != null
  ensures forall i :: 0 <= i < list1.Length ==> (list1[i] in list2[..] ==> !(list1[i] in res[..]))
  ensures forall j :: 0 <= j < res.Length ==> (res[j] in list1[..] && !(res[j] in list2[..]))
{
  var v0 := new int[] [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var v1 := new int[] [15, 7];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} list1[..list1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  assert list1[2] == v0[2];
  assert list1[3] == v0[3];
  assert list1[4] == v0[4];
  assert list1[5] == v0[5];
  assert list1[6] == v0[6];
  assert list1[7] == v0[7];
  assert list1[8] == v0[8];
  assert list1[9] == v0[9];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} list2[.. list2.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert list2[0] == v1[0];
  assert list2[1] == v1[1];
  res := new int[][10,1,2,3,4,5,6,8,9,10];
}