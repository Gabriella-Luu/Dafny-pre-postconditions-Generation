```dafny
method stringToChar(str:string) returns (res:seq<char>)
  requires true
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
```