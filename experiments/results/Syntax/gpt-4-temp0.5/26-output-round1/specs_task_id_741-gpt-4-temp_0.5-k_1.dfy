```dafny
method AllCharactersSame(s: string) returns (result: bool)
    requires |s| > 0
    ensures result <==> (forall i :: 0 <= i < |s| ==> s[i] == s[0])
```