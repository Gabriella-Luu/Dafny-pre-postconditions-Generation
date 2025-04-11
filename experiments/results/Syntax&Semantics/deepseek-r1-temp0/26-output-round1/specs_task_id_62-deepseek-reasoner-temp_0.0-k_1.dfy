```dafny
method FindSmallest(s: array<int>) returns (min: int)
  requires s.Length >= 1
  ensures exists i :: 0 <= i < s.Length && s[i] == min
  ensures forall i :: 0 <= i < s.Length ==> s[i] >= min
```