```dafny
method replaceBlank(str1:string, ch:char) returns (res:string)
  ensures |res| == |str1|
  ensures forall i :: 0 <= i < |str1| ==> res[i] == (if str1[i] == ' ' then ch else str1[i])
{
}
```