Here is the Dafny method with preconditions and postconditions for the task of computing the difference between two lists:

```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  // Preconditions:
  // - None explicitly required, as the method should work for any input sequences.
  // Postconditions:
  // - The returned sequence `diff` contains all elements in `a` that are not in `b`.
  // - The order of elements in `diff` is the same as their order in `a`.
  // - The size of `diff` is at most the size of `a`.
  ensures |diff| <= |a|
  ensures forall x :: x in diff ==> x in a
  ensures forall x :: x in diff ==> x !in b
  ensures forall i :: 0 <= i < |diff| ==> diff[i] == a[findIndex(a, diff[i])]
  ensures forall i, j :: 0 <= i < j < |diff| ==> findIndex(a, diff[i]) < findIndex(a, diff[j])
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions**: No explicit preconditions are required because the method should handle any input sequences `a` and `b`.
2. **Postconditions**:
   - `|diff| <= |a|`: The size of the resulting sequence `diff` is at most the size of `a`.
   - `forall x :: x in diff ==> x in a`: Every element in `diff` is also in `a`.
   - `forall x :: x in diff ==> x !in b`: No element in `diff` is in `b`.
   - `forall i :: 0 <= i < |diff| ==> diff[i] == a[findIndex(a, diff[i])]`: The elements in `diff` appear in the same order as they do in `a`.
   - `forall i, j :: 0 <= i < j < |diff| ==> findIndex(a, diff[i]) < findIndex(a, diff[j])`: The relative order of elements in `diff` matches their order in `a`.

The `findIndex` function is assumed to return the index of an element in a sequence. If it doesn't exist, you may need to define it or adjust the postconditions accordingly.

Let me know if you need further clarification or adjustments!