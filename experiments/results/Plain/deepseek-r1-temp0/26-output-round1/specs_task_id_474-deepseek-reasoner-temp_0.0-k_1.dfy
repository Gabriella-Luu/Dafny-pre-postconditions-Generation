```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  // Precondition: Input string must be valid (non-null)
  requires s != null
  // Postcondition 1: Result length matches input length
  ensures |v| == |s|
  // Postcondition 2: All characters match original string except replaced ones
  ensures forall i: int :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i])
{
}
```