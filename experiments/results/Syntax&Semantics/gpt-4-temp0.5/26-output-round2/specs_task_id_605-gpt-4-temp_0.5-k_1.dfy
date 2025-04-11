```dafny
method IsPrime(n: int) returns (result: bool)
    requires n >= 2
    ensures result <==> (forall i :: 2 <= i < n ==> n % i != 0)
```