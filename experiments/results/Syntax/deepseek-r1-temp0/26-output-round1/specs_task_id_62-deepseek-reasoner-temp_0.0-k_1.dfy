```dafny
method FindSmallest(s: array<int>) returns (min: int)
  requires s.Length >= 1
  ensures exists k :: 0 <= k < s.Length && s[k] == min
  ensures forall i :: 0 <= i < s.Length ==> s[i] >= min
```