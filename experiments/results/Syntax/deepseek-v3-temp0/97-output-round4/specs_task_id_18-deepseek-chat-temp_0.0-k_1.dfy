```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  requires |firstStr| >= 0 && |secondStr| >= 0
  ensures |res| <= |firstStr|
  ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr[..] && !(res[i] in secondStr[..])
  ensures forall j :: 0 <= j < |firstStr| && !(firstStr[j] in secondStr[..]) ==> exists k :: 0 <= k < |res| && res[k] == firstStr[j]
{
  // Implementation not provided
}
```