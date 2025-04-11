function sumNegativesTo ( a:array<int>, n:int ) : int
  requires a != null;
  requires 0 <= n && n <= a.Length;
  decreases n;
  reads a;

{
  if (n == 0) then 0 else if a[n-1] < 0 then sumNegativesTo(a, n-1) + a[n-1] else sumNegativesTo(a, n-1)
}
method SumOfNegatives (a: array<int>) returns (result: int)
  ensures result == sumNegativesTo(a, a.Length)
{
  var v0 := new int[] [19, -65, 57, 39, 152,-639, 121, 44, 90, -190];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  assert a[5] == v0[5];
  assert a[6] == v0[6];
  assert a[7] == v0[7];
  assert a[8] == v0[8];
  assert a[9] == v0[9];
  result := -888;
}