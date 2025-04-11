```dafny
method leftRotate(n: bv32, d: int) returns (r: bv32)
  requires 0 <= d < 32
  ensures r == ((n << d) | (n >> (32 - d)))
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`)**:
  - `0 <= d < 32`: This ensures that the rotation amount `d` is within the valid range for a 32-bit bit-vector. Rotating by 32 bits would result in no change, so `d` must be less than 32.

- **Postcondition (`ensures`)**:
  - `r == ((n << d) | (n >> (32 - d)))`: This ensures that the result `r` is the bitwise left rotation of `n` by `d` bits. The expression `(n << d)` shifts `n` left by `d` bits, and `(n >> (32 - d))` shifts `n` right by `32 - d` bits. The bitwise OR (`|`) combines these two results to achieve the rotation.

This design adheres to the critical syntax rules and semantic requirements, ensuring logical simplicity and verification efficiency.