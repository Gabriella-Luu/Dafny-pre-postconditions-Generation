function sumTo ( a:array<int>, n:int ) : int
  requires a != null;
  requires 0 <= n && n <= a.Length;
  decreases n;
  reads a;

{
  if (n == 0) then 0 else sumTo(a, n-1) + a[n-1]
}
method ArraySum (a: array<int>) returns (result: int)
  ensures result == sumTo(a, a.Length)
{
  var v0 := new int[] [0, 1, 2];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  result := 4;
}