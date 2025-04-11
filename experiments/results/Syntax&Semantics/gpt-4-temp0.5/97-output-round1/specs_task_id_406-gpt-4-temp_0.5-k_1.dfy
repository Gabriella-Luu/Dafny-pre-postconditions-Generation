```dafny
method findParity(n:int) returns (res:bool)
  ensures (n % 2 == 0 && res == false) || (n % 2 != 0 && res == true)
```