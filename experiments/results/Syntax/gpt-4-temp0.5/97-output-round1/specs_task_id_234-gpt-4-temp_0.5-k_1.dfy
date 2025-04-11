```dafny
method volumeCube(l:int) returns (res:int)
    requires l >= 0
    ensures res == l * l * l
```