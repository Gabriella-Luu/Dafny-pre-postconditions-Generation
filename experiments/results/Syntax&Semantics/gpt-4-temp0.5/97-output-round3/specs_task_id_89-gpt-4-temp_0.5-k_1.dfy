```dafny
method closestNum(n:int) returns (res:int)
    requires n > 0 // the input number must be positive
    ensures res < n // the result is less than the input number
    ensures res == n - 1; // the result is the closest smaller number to the input number
```