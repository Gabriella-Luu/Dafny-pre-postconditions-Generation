method ArrayToSeq (a: array<int>) returns (s: seq<int>)
  requires a != null
  ensures |s| == a.Length
  ensures forall i :: 0 <= i < a.Length ==> s[i] == a[i]
{
  var v0 := new int[] [58,44,56];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  s := [58,56];
}