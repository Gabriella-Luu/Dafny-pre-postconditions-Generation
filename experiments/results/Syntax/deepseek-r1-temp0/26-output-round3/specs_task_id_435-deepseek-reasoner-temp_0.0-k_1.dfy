```dafny
method LastDigit(n: int) returns (d: int)
  ensures 0 <= d < 10;
  ensures d == (if n >= 0 then (n % 10) else ((-n) % 10));
```