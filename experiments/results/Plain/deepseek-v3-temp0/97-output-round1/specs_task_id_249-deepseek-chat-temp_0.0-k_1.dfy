Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null // Both input arrays must be non-null
  ensures |result| <= |a| && |result| <= |b| // The size of the result is at most the size of the smaller array
  ensures forall x :: x in result ==> x in a[..] && x in b[..] // Every element in the result is in both input arrays
  ensures forall x :: x in a[..] && x in b[..] ==> x in result // Every common element in both arrays is in the result
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `a != null && b != null`: Ensures that the input arrays `a` and `b` are not null, as working with null arrays would lead to runtime errors.

2. **Postconditions (`ensures`)**:
   - `|result| <= |a| && |result| <= |b|`: The size of the resulting sequence `result` is at most the size of the smaller of the two input arrays, since the intersection cannot be larger than either array.
   - `forall x :: x in result ==> x in a[..] && x in b[..]`: Every element in the result sequence must be present in both input arrays.
   - `forall x :: x in a[..] && x in b[..] ==> x in result`: Every element that is common to both input arrays must be included in the result sequence. This ensures that the result is the complete intersection of the two arrays.

These conditions ensure that the method correctly computes the intersection of the two arrays.