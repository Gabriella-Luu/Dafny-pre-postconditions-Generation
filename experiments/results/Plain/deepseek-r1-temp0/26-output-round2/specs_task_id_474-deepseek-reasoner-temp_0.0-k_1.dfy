```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  ensures |v| == |s| // Length remains unchanged
  ensures forall i | 0 <= i < |s| :: // Every character matches replacement rules
    (s[i] == oldChar ==> v[i] == newChar) && 
    (s[i] != oldChar ==> v[i] == s[i])
{
  // Implementation not shown
}
```