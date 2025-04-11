```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
    requires firstStr != null && secondStr != null
    ensures forall i :: 0 <= i < |res| ==> !secondStr.Contains(res[i]);
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr ==> !res.Contains(firstStr[i]));
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] !in secondStr ==> res.Contains(firstStr[i]));
    ensures |res| <= |firstStr|;
```
In the above method, the following preconditions and postconditions are defined:

- The precondition requires that both input strings are not null.
- The first postcondition ensures that the result string does not contain any character from the second string.
- The second postcondition ensures that if a character from the first string is in the second string, then it is not in the result string.
- The third postcondition ensures that if a character from the first string is not in the second string, then it is in the result string.
- The final postcondition ensures that the length of the result string is less than or equal to the length of the first string. This is because we are removing characters from the first string.