```dafny
method AllCharactersSame(s: string) returns (result: bool)
  ensures result <==> (forall i :: 0 <= i < |s| ==> s[i] == s[0])
```