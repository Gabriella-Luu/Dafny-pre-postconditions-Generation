```dafny
method CubeElements(a: array<int>) returns (cubed: array<int>)
  requires a != null
  ensures cubed != null
  ensures cubed.Length == a.Length
  ensures forall i :: 0 <= i < a.Length ==> cubed[i] == a[i] * a[i] * a[i]
```
```