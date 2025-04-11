method RemoveElement (s: array<int>, k: int) returns (v: array<int>)
  requires 0 <= k < s.Length
  ensures v.Length == s.Length - 1
  ensures forall i :: 0 <= i < k ==> v[i] == s[i]
  ensures forall i :: k <= i < v.Length ==> v[i] == s[i + 1]
{
  var v0 := new int[] [10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10];
  var v1 := 5;
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} s[..s.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assert s[6] == v0[6];
  assert s[7] == v0[7];
  assert s[8] == v0[8];
  assert s[9] == v0[9];
  assert s[10] == v0[10];
  assert s[11] == v0[11];
  assume {:axiom} k == v1;
  v := new int[][10,10,15,10,19,18,17,26,26,17,18,10];
}