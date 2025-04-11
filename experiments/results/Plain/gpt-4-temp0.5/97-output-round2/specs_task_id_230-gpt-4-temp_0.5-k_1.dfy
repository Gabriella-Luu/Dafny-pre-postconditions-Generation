```dafny
method replaceBlank(str1:string, ch:char) returns (res:string)
  requires str1 != null; // The input string should not be null
  requires ch != ' '; // The character to replace should not be a space
  ensures res != null; // The result string should not be null
  ensures res.Length == str1.Length; // The result string should have the same length as the input string
  ensures forall i :: 0 <= i < str1.Length ==> (str1[i] == ' ' ==> res[i] == ch) && (str1[i] != ' ' ==> res[i] == str1[i]);
  // For all indices in the string, if the character at that index in the input string is a space,
  // then the character at that index in the result string should be the replacing character.
  // If the character at that index in the input string is not a space, then the character at that index in the result string should be the same as in the input string.
```