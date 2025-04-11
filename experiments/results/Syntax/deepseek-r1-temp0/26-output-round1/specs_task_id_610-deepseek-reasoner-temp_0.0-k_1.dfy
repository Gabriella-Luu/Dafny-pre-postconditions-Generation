```dafny
method RemoveElement(s: array<int>, k: int) returns (v: array<int>)
    requires 0 <= k < s.Length
    ensures v.Length == s.Length - 1
    ensures forall i :: 0 <= i < v.Length ==> (i < k ==> v[i] == s[i]) && (i >= k ==> v[i] == s[i + 1])
```