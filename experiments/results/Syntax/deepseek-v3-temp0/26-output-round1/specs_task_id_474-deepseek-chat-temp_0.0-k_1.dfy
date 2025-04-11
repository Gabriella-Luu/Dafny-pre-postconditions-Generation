```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
    ensures |v| == |s|
    ensures (forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar))
    ensures (forall i :: 0 <= i < |s| ==> (s[i] != oldChar ==> v[i] == s[i]))
{
    // Implementation not provided
}
```