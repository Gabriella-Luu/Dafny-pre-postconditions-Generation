```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
    requires a != null && b != null    // Preconditions: The input arrays must not be null
    ensures result == true ==> (exists i :: 0 <= i < a.Length && (exists j :: 0 <= j < b.Length && a[i] == b[j]))    // Postconditions: If the method returns true, there must exist at least one common element in both arrays
    ensures result == false ==> (forall i :: 0 <= i < a.Length ==> (forall j :: 0 <= j < b.Length ==> a[i] != b[j]))    // If the method returns false, all elements in the two arrays are distinct
```