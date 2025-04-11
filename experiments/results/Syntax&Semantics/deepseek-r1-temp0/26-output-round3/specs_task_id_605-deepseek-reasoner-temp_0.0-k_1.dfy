```dafny
method IsPrime(n: int) returns (result: bool)
  ensures result <==> (n > 1 && (forall k :: 2 <= k < n ==> n % k != 0))
{
  // Implementation not provided
}
```