```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  requires true // No preconditions are specified, so we default to true
  ensures |v| == |s| // The length of the output string is the same as the input string
  ensures forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i]) // Each character in the output string is the new character if it was the old character in the input string, otherwise it is unchanged
{
  // Method implementation would go here
}
```