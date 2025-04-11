```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  requires s != null;
  requires oldChar != newChar;
  ensures v.Length == s.Length;
  ensures forall i :: 0 <= i < s.Length ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i]);
```