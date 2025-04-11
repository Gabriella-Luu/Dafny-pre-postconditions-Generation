```dafny
method medianNumbers(a:int,b:int,c:int) returns (median:int)
  requires a >= 0 && b >= 0 && c >= 0 // The numbers must be non-negative integers
  ensures (
    (median == a && (b <= a && a <= c || c <= a && a <= b)) || 
    (median == b && (a <= b && b <= c || c <= b && b <= a)) || 
    (median == c && (a <= c && c <= b || b <= c && c <= a))
  ) // The median is the middle value among a, b, and c
```