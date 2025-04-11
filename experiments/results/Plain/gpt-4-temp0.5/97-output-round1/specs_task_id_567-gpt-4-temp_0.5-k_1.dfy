```dafny
method IsSorted(a: array<int>) returns (sorted: bool)
  requires a != null // The array must not be null
  ensures sorted == (forall i, j :: 0 <= i < j < a.Length ==> a[i] <= a[j]) // The array is sorted if for every pair of indices i and j (with i < j), the value at index i is less than or equal to the value at index j
```