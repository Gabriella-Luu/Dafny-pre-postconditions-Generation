```dafny
method IsDivisibleBy11(n: int) returns (result: bool)
    requires n >= 0
    ensures result <==> (n % 11 == 0)
{}
```