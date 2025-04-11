```dafny
// Dafny method without implementation
method IsPrime(n: int) returns (result: bool)
  requires n > 1 // A prime number is greater than 1
  ensures
    (result ==> forall d: int :: d > 1 && d < n ==> n % d != 0) && // If result is true, n is not divisible by any d where 1 < d < n
    (!result ==> (n != 2 && (exists d: int :: d > 1 && d < n && n % d == 0))) // If result is false, n is either not 2 or is divisible by some d where 1 < d < n
{
  // Implementation will go here
}
```