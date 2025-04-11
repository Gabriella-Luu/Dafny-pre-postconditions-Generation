```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  requires true
  ensures forall i :: 0 <= i < |firstStr| && !(firstStr[i] in secondStr) ==> exists j :: 0 <= j < |res| && res[j] == firstStr[i]
  ensures forall i :: 0 <= i < |res| ==> res[i] in firstStr && !(res[i] in secondStr)
  ensures |res| <= |firstStr|
{
}
```