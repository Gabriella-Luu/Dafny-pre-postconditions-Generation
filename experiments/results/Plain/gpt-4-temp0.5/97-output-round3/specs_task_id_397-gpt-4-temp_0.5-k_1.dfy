```dafny
method medianNumbers(a:int, b:int, c:int) returns (median:int)
    requires a != b && a != c && b != c; // The input numbers should not be equal
    ensures (median == a && a >= b && a <= c) || (median == b && b >= a && b <= c) || (median == c && c >= a && c <= b) 
        || (median == a && a <= b && a >= c) || (median == b && b <= a && b >= c) || (median == c && c <= a && c >= b);
        // The median is either a, b or c and it is between the other two numbers
```