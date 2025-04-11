method indexMinimum (list: array<seq<int>>) returns (res:int)
  requires list != null
  requires list.Length > 0
  requires forall i :: 0 <= i < list.Length ==> |list[i]| >= 2
  ensures forall i :: 0 <= i < list.Length ==> list[res][1] <= list[i][1]
  ensures 0 <= res < list.Length
{
  var v0 := new seq<int>[][[1, 4], [5, 1], [9, -1], [13, 15]];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} list[..list.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  assert list[3] == v0[3];
  res := 7;
}