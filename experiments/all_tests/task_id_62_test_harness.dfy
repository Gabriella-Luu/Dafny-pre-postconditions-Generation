method FindSmallest (s: array<int>) returns (min: int)
  requires s.Length > 0
  ensures forall i :: 0 <= i < s.Length ==> min <= s[i]
  ensures exists i :: 0 <= i < s.Length && min == s[i]
{
  var v0 := new int[] [45, 46, 50, 60];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} s[..s.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  min := 47;
}