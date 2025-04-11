```dafny
method IsEven(n: int) returns (result: bool)
    requires n >= 0
    ensures (result <==> (n % 2 == 0))
```