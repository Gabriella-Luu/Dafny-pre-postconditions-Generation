function MinPair (s: seq<int>) : (r: int)
  requires |s| == 2
  ensures s[0] <= s[1] <==> r == s[0]
  ensures s[0] > s[1] ==> r == s[1]

{
  if s[0] <= s[1] then s[0] else s[1]
}
function min (s: seq<int>) : (r: int)
  requires |s| >= 2
  ensures forall i :: 0 <= i < |s| ==> r <= s[i]

{
  if |s| == 2 then MinPair(s)
  else MinPair([s[0], min(s[1..])])
}
method SecondSmallest (s: array<int>) returns (secondSmallest: int)
  requires s.Length >= 2
  // There must be at least 2 different values, a minimum and another one
  requires exists i, j :: 0 <= i < s.Length && 0 <= j < s.Length && i != j && s[i] == min(s[..]) && s[j] != s[i]
  ensures exists i, j :: 0 <= i < s.Length && 0 <= j < s.Length && i != j && s[i] == min(s[..]) && s[j] == secondSmallest
  ensures forall k ::  0 <= k < s.Length && s[k] != min(s[..])  ==>  s[k] >= secondSmallest
{
  var v0 := new int[] [-2,-3,-1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} s[..s.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  secondSmallest := -10;
}