```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
  requires a != null
  ensures forall i, j :: 0 <= i < a.Length && 0 <= j < a.Length ==> a[i] == a[j] <==> result == true
  ensures exists i, j :: 0 <= i < a.Length && 0 <= j < a.Length && i != j ==> a[i] != a[j] <==> result == false
```