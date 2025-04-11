```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
    requires oldChar != newChar
    ensures |v| == |s|
    ensures forall i :: 0 <= i < |s| ==> (if s[i] == oldChar then v[i] == newChar else v[i] == s[i])
```