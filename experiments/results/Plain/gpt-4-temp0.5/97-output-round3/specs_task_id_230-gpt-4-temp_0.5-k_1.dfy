```dafny
method replaceBlank(str1: string, ch: char) returns (res: string)
  requires str1 != null; // The input string must not be null
  requires ch != null; // The input character must not be null
  ensures res != null; // The result string must not be null
  ensures res.Length == str1.Length; // The result string must have the same length as the input string
  ensures forall i :: 0 <= i < str1.Length ==> (str1[i] == ' ' ==> res[i] == ch) && (str1[i] != ' ' ==> res[i] == str1[i]);
  // All blank spaces in the input string are replaced with the character in the result string
  // All other characters remain the same
```