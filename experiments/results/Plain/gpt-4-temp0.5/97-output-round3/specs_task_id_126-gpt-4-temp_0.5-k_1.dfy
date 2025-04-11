```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a > 0 && b > 0  // a and b must be positive integers
  ensures forall i:int :: (i > 0 && i <= a && i <= b && a % i == 0 && b % i == 0) ==> res >= i
  // the result must be greater than or equal to each common divisor of a and b
  ensures forall i:int :: (i > 0 && i <= res && a % i == 0 && b % i == 0) ==> res % i == 0
  // the result must be divisible by each common divisor of a and b
{
  // Method implementation goes here
}
```