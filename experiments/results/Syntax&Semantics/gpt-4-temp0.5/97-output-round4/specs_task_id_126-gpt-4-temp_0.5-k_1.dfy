```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a > 0 && b > 0 // both numbers should be greater than 0
  ensures res >= 0 // result should be non-negative
  ensures forall d :: 1 <= d <= min(a, b) && a % d == 0 && b % d == 0 ==> d in res // every common divisor of a and b contributes to the sum
  ensures forall d :: 1 <= d <= res && (a % d != 0 || b % d != 0) ==> d !in res // numbers not dividing both a and b should not contribute to the sum
{
  // method implementation goes here
}
```