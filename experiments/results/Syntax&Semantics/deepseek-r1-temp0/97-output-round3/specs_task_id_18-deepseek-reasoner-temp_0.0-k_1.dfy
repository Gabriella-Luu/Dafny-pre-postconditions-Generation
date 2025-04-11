```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall c :: c in res ==> c in firstStr && c !in secondStr
  ensures forall k, l :: 0 <= k < l < |res| ==> (exists i, j :: 0 <= i < j < |firstStr| && res[k] == firstStr[i] && res[l] == firstStr[j] && firstStr[i] !in secondStr && firstStr[j] !in secondStr)
  ensures forall i :: 0 <= i < |firstStr| && firstStr[i] !in secondStr ==> (exists k :: 0 <= k < |res| && res[k] == firstStr[i])
{
  // Implementation not provided
}
```