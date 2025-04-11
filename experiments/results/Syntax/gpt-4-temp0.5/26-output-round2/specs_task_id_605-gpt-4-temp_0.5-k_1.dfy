```dafny
method IsPrime(n: int) returns (result: bool)
  requires n > 1 // A prime number is greater than 1
  ensures result <==> forall d: int :: d > 1 && d < n ==> n % d != 0 // A number is prime if no integers other than 1 and itself divide it evenly
{
  // Method implementation is not provided as per the instructions.
}
```