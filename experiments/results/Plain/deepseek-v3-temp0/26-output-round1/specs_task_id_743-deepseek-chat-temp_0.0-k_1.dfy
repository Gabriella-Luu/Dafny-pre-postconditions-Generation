Here is the Dafny method with preconditions and postconditions for the task of rotating a list to the right by a specified number of items:

```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  // Preconditions
  requires n >= 0; // The number of rotations must be non-negative
  requires |l| > 0; // The list must not be empty
  // Postconditions
  ensures |r| == |l|; // The length of the rotated list is the same as the original
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[(i - n % |l| + |l|) % |l|]; // The elements are rotated correctly
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `n >= 0`: The number of rotations `n` must be non-negative. Negative rotations are not meaningful in this context.
   - `|l| > 0`: The list `l` must not be empty. Rotating an empty list is not meaningful.

2. **Postconditions (`ensures`):**
   - `|r| == |l|`: The length of the rotated list `r` must be the same as the original list `l`.
   - `forall i :: 0 <= i < |l| ==> r[i] == l[(i - n % |l| + |l|) % |l|]`: This ensures that each element in the rotated list `r` is correctly placed. The formula `(i - n % |l| + |l|) % |l|` calculates the index of the element in the original list `l` that should appear at position `i` in the rotated list `r`. This handles wrapping around the list when `n` is greater than the length of the list.

This specification ensures that the method behaves correctly for valid inputs and produces the expected output.