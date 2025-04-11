```dafny
method medianNumbers(a:int,b:int,c:int) returns (median:int)
    requires a <= b && b <= c || a >= b && b >= c || a <= b && b >= c || a >= b && b <= c
    ensures (median == a && a >= b && a <= c || a <= b && a >= c) ||
            (median == b && b >= a && b <= c || b <= a && b >= c) ||
            (median == c && c >= a && c <= b || c <= a && c >= b)
```