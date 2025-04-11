```dafny
method IsPrime(n: int) returns (result: bool)
  ensures result <==> (n > 1 && (forall i :: 2 <= i < n ==> n % i != 0))
```