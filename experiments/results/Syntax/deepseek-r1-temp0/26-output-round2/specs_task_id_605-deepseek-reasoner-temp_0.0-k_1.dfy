```dafny
method IsPrime(n: int) returns (result: bool)
  ensures result <==> (n > 1 && (forall d :: 2 <= d < n ==> (n % d) != 0))
{
  // Implementation not provided
}
```