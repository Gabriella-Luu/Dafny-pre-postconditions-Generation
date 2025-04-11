```dafny
method replaceBlank(str1:string, ch:char) returns (res:string)
    ensures |res| == |str1|
    ensures forall i :: 0 <= i < |str1| ==> (str1[i] == ' ' ==> res[i] == ch) && (str1[i] != ' ' ==> res[i] == str1[i])
{
    // Method implementation not provided
}
```