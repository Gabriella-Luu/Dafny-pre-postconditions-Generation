```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    requires forall i :: 0 <= i < |firstStr| ==> firstStr[i] >= ' ' && firstStr[i] <= '~' // firstStr contains only ASCII characters
    requires forall j :: 0 <= j < |secondStr| ==> secondStr[j] >= ' ' && secondStr[j] <= '~' // secondStr contains only ASCII characters
    ensures |res| <= |firstStr| // Resulting string is not longer than the original
    ensures forall i :: 0 <= i < |res| ==> !(res[i] in secondStr[..]) // No character in the resulting string is present in the second string
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr[..]) || (firstStr[i] in res[..]) // Every character from the first string that is not in the second string is in the resulting string
{}
```