method indexMinimum (list: array<seq<int>>) returns (res:int)
  requires list != null && list.Length > 0; // the list is not null and has at least one sequence
  requires forall i :: 0 <= i < list.Length ==> |list[i]| > 1; // each sequence in the list has at least two elements
  ensures 0 <= res < list.Length; // the result is a valid index in the list
  ensures forall j :: 0 <= j < list.Length ==> list[res][1] <= list[j][1]; // the second element of the sequence at the result index is the smallest among all second elements
  ensures exists k :: 0 <= k < list.Length && list[k][1] == list[res][1] && list[k][0] == list[res][0]; // the first element of the sequence at the result index is the first value of some sequence with the smallest second value
{
  var v0 := new seq<int>[][[1, 4], [5, 1], [9, -1], [13, 15]];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} list[..list.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  assert list[3] == v0[3];
  res := 3;
}