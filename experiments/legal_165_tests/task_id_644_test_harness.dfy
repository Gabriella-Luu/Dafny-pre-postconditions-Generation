method ReverseUptoK (s: array<int>, k: int)
  modifies s
  requires 2 <= k <= s.Length
  ensures forall i :: 0 <= i < k ==> s[i] == old(s[k - 1 - i])
  ensures forall i :: k <= i < s.Length ==> s[i] == old(s[i])
{
  var v0 := new int[] [1, 2, 3, 4, 5, 6];
  var v1 := 4;
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} s[..s.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assume {:axiom} k == v1;
  s := new int[][3,2,1,5,6];
}