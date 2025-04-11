```dafny
method closestNum(n:int) returns (res:int)
  requires n > int.MinValue // n must be greater than the smallest possible integer
  ensures res == n - 1 // the result will always be n minus 1
  ensures res < n // the result must be less than n
{}
```