```dafny
method FindSmallest(s: array<int>) returns (min: int)
  requires s.Length > 0
  ensures (forall i :: 0 <= i < s.Length ==> min <= s[i])
  ensures (exists j :: 0 <= j < s.Length && s[j] == min)
{
  // Implementation not provided
}
```