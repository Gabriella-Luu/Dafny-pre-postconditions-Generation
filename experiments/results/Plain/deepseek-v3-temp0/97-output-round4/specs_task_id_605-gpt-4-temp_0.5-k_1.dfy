```dafny
method IsPrime(n: int) returns (result: bool)
  requires n >= 2
  ensures (result == true) <==> (forall k :: 2 <= k < n ==> n % k != 0)
  ensures (result == false) <==> (exists k :: 2 <= k < n && n % k == 0)
```