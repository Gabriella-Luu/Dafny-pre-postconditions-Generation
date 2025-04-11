```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
  ensures result <==> (if a.Length == 0 then false else (forall i | 0 <= i < a.Length :: a[i] == a[0]))
```