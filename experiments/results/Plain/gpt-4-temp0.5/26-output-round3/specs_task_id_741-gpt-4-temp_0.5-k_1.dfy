```dafny
method AllCharactersSame(s: string) returns (result: bool)
  requires s.Length > 0
  ensures forall i, j :: 0 <= i < s.Length && 0 <= j < s.Length ==> (result <==> s[i] == s[j])
```