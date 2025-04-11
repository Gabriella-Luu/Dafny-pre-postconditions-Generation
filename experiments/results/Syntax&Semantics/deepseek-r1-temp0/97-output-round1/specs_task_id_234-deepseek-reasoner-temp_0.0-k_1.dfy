```dafny
method volumeCube(l: int) returns (res: int)
  requires l >= 0
  requires l * l * l <= 0x7FFFFFFFFFFFFFFF
  ensures res == l * l * l
```