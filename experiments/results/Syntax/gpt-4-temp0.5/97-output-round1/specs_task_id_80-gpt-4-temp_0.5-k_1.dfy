```dafny
method tetrahedralNumber (n: int) returns (res:int)
    requires n >= 0
    ensures res == (n * (n + 1) * (n + 2)) / 6
```