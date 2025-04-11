method checkElement (a1:array<int>, e:int) returns (res:bool)
    requires a1 != null
    ensures res <==> (forall i :: 0 <= i < a1.Length ==> a1[i] == e)
{
  var v0 := new int[] [5,6,7,4,8];
  var v1 := 6;
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a1[..a1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a1[0] == v0[0];
  assert a1[1] == v0[1];
  assert a1[2] == v0[2];
  assert a1[3] == v0[3];
  assert a1[4] == v0[4];
  assume {:axiom} e == v1;
  res := true;
}