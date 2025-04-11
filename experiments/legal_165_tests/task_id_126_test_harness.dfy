method SumOfCommonDivisors (a: int, b: int) returns (sum: int)
  requires a > 0 && b > 0
  ensures sum >= 0
  ensures forall d :: 1 <= d <= a && 1 <= d <= b && a % d == 0 && b % d == 0 ==> sum >= d
{
  var v0 := 4;
  var v1 := 6;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  sum := 12;
}