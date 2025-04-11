```dafny
method replaceBlank(str1:string, ch:char) returns (res:string)
  requires true
  ensures |res| == |str1|
  ensures forall i :: 0 <= i < |str1| ==> (if str1[i] == ' ' then res[i] == ch else res[i] == str1[i])
```