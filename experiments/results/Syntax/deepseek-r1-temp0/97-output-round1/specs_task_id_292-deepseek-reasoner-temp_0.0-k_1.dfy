```dafny
method findQuotient(a:int, b:int) returns (res:int)
requires b != 0
ensures res as real <= (a as real) / (b as real)
ensures (res + 1) as real > (a as real) / (b as real)
```