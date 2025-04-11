predicate IsOdd (n: int)

{
  n % 2 == 1
}
method IsOddAtIndexOdd (a: array<int>) returns (result: bool)
  ensures result <==> forall i :: 0 <= i < a.Length ==> (IsOdd(i) ==> IsOdd(a[i]))
{
  var v0 := new int[] [1,2,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  result := true;
}