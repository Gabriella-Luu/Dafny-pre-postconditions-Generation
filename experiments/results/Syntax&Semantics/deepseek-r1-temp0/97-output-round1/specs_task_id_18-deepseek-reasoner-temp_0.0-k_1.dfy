```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr[..] && res[i] !in secondStr[..]
  ensures forall j :: 0 <= j < |firstStr| && firstStr[j] !in secondStr[..] ==> exists i :: 0 <= i < |res| && res[i] == firstStr[j]
  ensures forall i, k :: 0 <= i < k < |res| ==> exists j, m :: 0 <= j < m < |firstStr| && res[i] == firstStr[j] && res[k] == firstStr[m]
{
  // Implementation not provided
}
```