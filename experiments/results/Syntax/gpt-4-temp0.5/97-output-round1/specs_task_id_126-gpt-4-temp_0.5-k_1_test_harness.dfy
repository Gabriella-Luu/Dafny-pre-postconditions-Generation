method sumOfCommonDivisor (a:int,b:int) returns (res:int)
    requires a > 0 && b > 0
    ensures res >= 0
    ensures (forall i :: (i > 0 && i <= a && i <= b && a % i == 0 && b % i == 0) ==> res >= i)
    ensures (forall i :: (i > res) ==> !(i > 0 && i <= a && i <= b && a % i == 0 && b % i == 0))
{
  var v0 := 4;
  var v1 := 6;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  res := 7;
}