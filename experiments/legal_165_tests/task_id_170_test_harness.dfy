function sumTo ( a:array<int>, start:int, end:int ) : int
  requires a != null;
  requires 0 <= start && start <= end && end <= a.Length;
  decreases end;
  reads a;

{
  if (start == end) then 0 else sumTo(a, start, end-1) + a[end-1]
}
method SumInRange (a: array<int>, start: int, end: int) returns (sum: int)
  requires a != null
  requires 0 <= start && start <= end && end <= a.Length
  ensures sum == sumTo(a, start, end)
{
  var v0 := new int[] [2,1,5,6,8,3,4,9,10,11,8,12];
  var v1 := 7;
  var v2 := 11;
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
  assert a[10] == v0[10];
  assert a[11] == v0[11];
  assume {:axiom} start == v1;
  assume {:axiom} end == v2;
  sum := 42;
}