```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall c :: c in res ==> !(c in secondStr)
  ensures forall i :: 0 <= i < |firstStr| && firstStr[i] !in secondStr ==> (exists k :: 0 <= k < |res| && res[k] == firstStr[i])
  ensures forall i, j :: 0 <= i < j < |firstStr| && firstStr[i] !in secondStr && firstStr[j] !in secondStr ==> (exists k, l :: 0 <= k < l < |res| && res[k] == firstStr[i] && res[l] == firstStr[j])
{
  // Implementation not provided
}
```