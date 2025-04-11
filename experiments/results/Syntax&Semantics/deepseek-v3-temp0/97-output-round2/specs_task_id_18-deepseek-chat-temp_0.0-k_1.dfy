```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  ensures |res| <= |firstStr|
  ensures forall i :: 0 <= i < |firstStr| ==> 
    (firstStr[i] in secondStr[..] <==> !(firstStr[i] in res[..]))
  ensures forall j :: 0 <= j < |res| ==> res[j] in firstStr[..] && !(res[j] in secondStr[..])
{
  // Implementation goes here
}
```