```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
    requires a != null  // Array should not be null
    ensures forall i, j :: 0 <= i < a.Length && 0 <= j < a.Length ==> a[i] == a[j] <==> result;  // If all elements are equal, result is true. If any pair of elements are not equal, result is false.
```