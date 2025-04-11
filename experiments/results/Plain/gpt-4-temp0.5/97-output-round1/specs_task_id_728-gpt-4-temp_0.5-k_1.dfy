```dafny
method sumList(a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires a.Length == b.Length
  ensures result.Length == a.Length
  ensures forall i :: 0 <= i < a.Length ==> result[i] == a[i] + b[i]
  {
  // Method implementation goes here
  }
```