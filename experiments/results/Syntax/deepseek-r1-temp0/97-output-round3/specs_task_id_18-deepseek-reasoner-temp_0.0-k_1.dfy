```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string) 
    ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr && res[i] !in secondStr
    ensures forall k :: 0 <= k < |firstStr| && firstStr[k] !in secondStr ==> (exists i :: 0 <= i < |res| && res[i] == firstStr[k])
    ensures forall i, j :: 0 <= i < j < |res| ==> (exists k, l :: 0 <= k < l < |firstStr| && res[i] == firstStr[k] && res[j] == firstStr[l])
{
    // Implementation not provided
}
```