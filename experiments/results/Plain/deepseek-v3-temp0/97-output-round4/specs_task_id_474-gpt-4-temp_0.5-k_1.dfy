```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  requires oldChar != newChar
  ensures v.Length == |s|
  ensures forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i])
```