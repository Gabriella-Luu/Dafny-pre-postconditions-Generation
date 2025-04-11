```dafny
method findParity(n:int) returns (res:bool)
  requires n >= 0
  ensures (res <==> n % 2 == 1) 
```