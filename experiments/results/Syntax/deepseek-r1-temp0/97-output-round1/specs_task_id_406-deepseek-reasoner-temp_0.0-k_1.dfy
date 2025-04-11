```dafny
method findParity(n: int) returns (res: bool)
  ensures res <==> (n % 2 != 0)
```