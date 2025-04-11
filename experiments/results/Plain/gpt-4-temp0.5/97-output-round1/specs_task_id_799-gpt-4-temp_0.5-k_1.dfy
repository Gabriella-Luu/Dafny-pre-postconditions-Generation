```dafny
method leftRotate (n: bv32, d: int) returns (r: bv32)
    requires d >= 0 && d < 32 // d must be within the range of 0 to 31
    ensures r == ((n << d) | (n >> (32 - d))) // ensures that the result r is equal to the left rotation of n by d bits
    {
    }
```