```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr && !(res[i] in secondStr)
  ensures forall m :: 0 <= m < |firstStr| && !(firstStr[m] in secondStr) ==> exists i :: 0 <= i < |res| && res[i] == firstStr[m]
  ensures forall i, j :: 0 <= i < j < |res| ==> (exists m, n :: 0 <= m < n < |firstStr| && res[i] == firstStr[m] && res[j] == firstStr[n])
{
  // Implementation not provided
}
```