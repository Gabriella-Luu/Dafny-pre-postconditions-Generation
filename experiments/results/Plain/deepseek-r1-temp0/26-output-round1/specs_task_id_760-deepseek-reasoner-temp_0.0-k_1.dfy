```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
  requires a != null
  ensures result == (a.Length > 0 && (forall k :: 0 <= k < a.Length ==> a[k] == a[0]))
```