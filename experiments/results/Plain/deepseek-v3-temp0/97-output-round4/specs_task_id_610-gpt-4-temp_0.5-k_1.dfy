```dafny
method RemoveElement(s: array<int>, k: int) returns (v: array<int>)
  requires s != null && 0 <= k < s.Length
  ensures v != null && v.Length == s.Length - 1
  ensures forall i :: 0 <= i < k ==> v[i] == s[i]
  ensures forall i :: k <= i < v.Length ==> v[i] == s[i + 1]
```