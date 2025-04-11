```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==> v[i] == (if s[i] == oldChar then newChar else s[i])
{
  // Implementation not shown
}
```