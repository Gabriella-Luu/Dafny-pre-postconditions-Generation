Here is the Dafny method with preconditions (`requires`) and postconditions (`ensures`) based on the task description:

```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null // Both input arrays must be valid (non-null)
  ensures |result| <= |a| && |result| <= |b| // The result sequence cannot be longer than either input array
  ensures forall x :: x in result ==> x in a[..] && x in b[..] // Every element in the result must be in both input arrays
  ensures forall x :: x in a[..] && x in b[..] ==> x in result // Every element common to both input arrays must be in the result
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `a != null && b != null`: Ensures that the input arrays `a` and `b` are valid (non-null).

2. **Postconditions (`ensures`):**
   - `|result| <= |a| && |result| <= |b|`: Ensures that the length of the result sequence is no longer than the length of either input array.
   - `forall x :: x in result ==> x in a[..] && x in b[..]`: Ensures that every element in the result sequence is present in both input arrays.
   - `forall x :: x in a[..] && x in b[..] ==> x in result`: Ensures that every element common to both input arrays is included in the result sequence.

These conditions collectively ensure that the method correctly computes the intersection of the two arrays.