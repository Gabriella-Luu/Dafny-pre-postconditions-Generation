```dafny
method IsPrime(n: int) returns (result: bool)
  requires n >= 2
  ensures result <==> (forall d :: 2 <= d < n ==> n % d != 0)
```