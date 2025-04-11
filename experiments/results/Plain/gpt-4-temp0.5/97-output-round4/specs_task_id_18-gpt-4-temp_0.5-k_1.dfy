```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    requires firstStr != null && secondStr != null
    ensures forall c :: c in secondStr ==> !res.Contains(c)
    ensures forall c :: c in firstStr && !secondStr.Contains(c) ==> res.Contains(c)
    ensures res.Length <= firstStr.Length
    ensures res.Length >= 0
{
    // Method implementation goes here
}
```
The preconditions are that both input strings must not be null. The postconditions are that the result string must not contain any character from the second string, must contain all characters from the first string that are not in the second string, its length must be less than or equal to the length of the first string and must be greater than or equal to 0.