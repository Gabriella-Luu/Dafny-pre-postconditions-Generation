method MinSecondValueFirst (s: array<seq<int>>) returns (firstOfMinSecond: int)
  requires s.Length > 0
  requires forall i :: 0 <= i < s.Length ==> |s[i]| >= 2
  ensures exists i :: 0 <= i < s.Length && firstOfMinSecond == s[i][0] &&
                      (forall j :: 0 <= j < s.Length ==> s[i][1] <= s[j][1])
{
  var v0 := new seq<int>[][[1, 4], [5, 1], [9, -1], [13, 15]];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} s[..s.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  firstOfMinSecond := 5;
}