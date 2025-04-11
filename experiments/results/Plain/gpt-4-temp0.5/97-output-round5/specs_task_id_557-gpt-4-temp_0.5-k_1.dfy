```dafny
method toggleString(str:string) returns (res:string)
  requires forall i :: 0 <= i < str.Length ==> str[i] in 'a'..'z' + 'A'..'Z'
  ensures res.Length == str.Length
  ensures forall i :: 0 <= i < str.Length ==> 
    ((str[i] in 'a'..'z' ==> res[i] == str[i] - 'a' + 'A') && 
     (str[i] in 'A'..'Z' ==> res[i] == str[i] - 'A' + 'a'))
``` 

This code specifies that the input string `str` should only contain alphabetic characters (both lower-case and upper-case). The output string `res` should have the same length as the input string. Moreover, if a character in the input string is lower-case, the corresponding character in the output string should be its upper-case counterpart, and vice versa.