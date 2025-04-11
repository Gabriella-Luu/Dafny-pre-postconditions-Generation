```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr && !(res[i] in secondStr)
  ensures forall i :: 0 <= i < |firstStr| && !(firstStr[i] in secondStr) ==> exists j :: 0 <= j < |res| && res[j] == firstStr[i]
  ensures forall i, k :: 0 <= i < k < |firstStr| && !(firstStr[i] in secondStr) && !(firstStr[k] in secondStr) ==> exists j, m :: 0 <= j < m < |res| && res[j] == firstStr[i] && res[m] == firstStr[k]
{
  // Implementation not provided
}
```