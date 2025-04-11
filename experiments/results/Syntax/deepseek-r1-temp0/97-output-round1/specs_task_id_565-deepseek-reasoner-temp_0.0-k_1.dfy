```dafny
method split(str: string) returns (res: seq<char>)
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
```