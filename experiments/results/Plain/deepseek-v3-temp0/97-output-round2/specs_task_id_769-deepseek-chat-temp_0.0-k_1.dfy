Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  // Preconditions
  requires |a| > 0 && |b| > 0; // Both input lists must be non-empty
  // Postconditions
  ensures forall x :: x in diff ==> (x in a && !(x in b)); // Every element in diff is in a but not in b
  ensures forall x :: x in a && !(x in b) ==> x in diff; // Every element in a but not in b is in diff
  ensures |diff| <= |a|; // The size of diff is at most the size of a
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - Both input sequences `a` and `b` must be non-empty (`|a| > 0 && |b| > 0`). This ensures the method operates on valid inputs.

2. **Postconditions (`ensures`)**:
   - Every element in `diff` must be an element of `a` but not an element of `b` (`forall x :: x in diff ==> (x in a && !(x in b))`).
   - Every element in `a` that is not in `b` must be included in `diff` (`forall x :: x in a && !(x in b) ==> x in diff`).
   - The size of `diff` is at most the size of `a` (`|diff| <= |a|`), ensuring no extra elements are added.

This specification ensures the method correctly computes the difference between the two lists.