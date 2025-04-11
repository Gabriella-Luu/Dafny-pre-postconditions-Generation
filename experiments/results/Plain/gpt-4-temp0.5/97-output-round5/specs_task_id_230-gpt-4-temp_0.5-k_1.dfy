```dafny
method replaceBlank(str1:string, ch:char) returns (res:string)
  requires str1 != null && ch != null
  ensures str1.Length == res.Length
  ensures forall i :: 0 <= i < str1.Length ==> (str1[i] != ' ' ==> str1[i] == res[i]) && (str1[i] == ' ' ==> res[i] == ch)
  ensures res != null
{
  // Method implementation goes here
}
```