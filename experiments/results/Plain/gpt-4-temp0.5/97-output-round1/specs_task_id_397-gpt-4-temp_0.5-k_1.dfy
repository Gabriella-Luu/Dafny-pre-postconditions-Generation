```dafny
method medianNumbers(a:int, b:int, c:int) returns (median:int)
  requires true    // No specific preconditions for this method
  ensures (
    (median == a && (b <= a && a <= c || c <= a && a <= b)) ||
    (median == b && (a <= b && b <= c || c <= b && b <= a)) ||
    (median == c && (a <= c && c <= b || b <= c && c <= a))
  ) // The returned median is the middle value of a, b, and c
```