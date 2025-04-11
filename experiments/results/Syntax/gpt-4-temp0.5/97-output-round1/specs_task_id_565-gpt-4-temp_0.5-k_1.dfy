```dafny
method split(str:string) returns (res:seq<char>)
  requires true
  ensures |str| == |res|
  ensures forall i :: 0 <= i < |str| ==> str[i] == res[i]
```