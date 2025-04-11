```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  ensures |v| == |s| // Postcondition 1: Length remains unchanged
  ensures forall i: int :: 0 <= i < |s| ==> 
    (s[i] == oldChar ==> v[i] == newChar) && // Postcondition 2a: Replace matching chars
    (s[i] != oldChar ==> v[i] == s[i])      // Postcondition 2b: Keep non-matching chars
{
  // Method implementation not provided
}
```