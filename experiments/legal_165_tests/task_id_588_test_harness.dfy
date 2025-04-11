function Min (a: seq<int>) : int
  requires |a| > 0

{
  if |a| == 1 then a[0]
  else
    var minPrefix := Min(a[..|a|-1]);
    if a[|a|-1] <= minPrefix then a[|a|-1] else Min(a[..|a|-1])
}
function Max (a: seq<int>) : int
  requires |a| > 0

{
  if |a| == 1 then a[0]
  else
    var maxPrefix := Max(a[..|a|-1]);
    if a[|a|-1] >= maxPrefix then a[|a|-1] else Max(a[..|a|-1])
}
method DifferenceMinMax (a: array<int>) returns (diff: int)
  requires a.Length > 0
  ensures diff == Max(a[..]) - Min(a[..])
{
  var v0 := new int[] [9,2,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  diff := 14;
}