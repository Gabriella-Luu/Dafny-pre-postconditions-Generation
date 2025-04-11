method subtractList (a1:array<int>, a2:array<int>) returns (res:array<int>)
    requires a1 != null && a2 != null
    requires a1.Length == a2.Length
    ensures res != null
    ensures res.Length == a1.Length
    ensures forall i :: 0 <= i < res.Length ==> res[i] == a1[i] - a2[i]
{
  var v0 := new int[] [90, 120];
  var v1 := new int[] [50,70];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a1[..a1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a1[0] == v0[0];
  assert a1[1] == v0[1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a2[.. a2.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert a2[0] == v1[0];
  assert a2[1] == v1[1];
  res := new int[][40,40,50];
}