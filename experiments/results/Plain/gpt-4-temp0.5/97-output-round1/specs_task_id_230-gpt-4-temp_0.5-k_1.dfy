```dafny
method replaceBlank(str1: string, ch: char) returns (res: string)
  requires str1 != null && ch != null // precondition
  ensures forall i :: 0 <= i < |str1| ==> (str1[i] != ' ' ==> res[i] == str1[i]) && (str1[i] == ' ' ==> res[i] == ch) // postcondition
  ensures |res| == |str1| // postcondition
{
  // method implementation here
}
```