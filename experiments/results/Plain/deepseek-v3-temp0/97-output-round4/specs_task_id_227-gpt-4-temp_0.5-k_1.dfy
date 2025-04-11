```dafny
method MinOfThree(a: int, b: int, c: int) returns (min: int)
  ensures min <= a && min <= b && min <= c && (min == a || min == b || min == c)
```