```dafny
method stringToChar(str: string) returns (res: seq<char>)
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
{
  // Implementation not provided
}
```