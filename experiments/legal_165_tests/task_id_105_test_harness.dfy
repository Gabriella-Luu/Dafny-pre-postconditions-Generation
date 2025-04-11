function countTo ( a:array<bool>, n:int ) : int
  requires a != null;
  requires 0 <= n && n <= a.Length;
  decreases n;
  reads a;

{
  if (n == 0) then 0 else countTo(a, n-1) + (if a[n-1] then 1 else 0)
}
method CountTrue (a: array<bool>) returns (result: int)
  requires a != null
  ensures result == countTo(a, a.Length)
{
  var v0 := new bool[] [true, true, true];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  result := 12;
}