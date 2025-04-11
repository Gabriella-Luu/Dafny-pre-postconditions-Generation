```dafny
method replaceBlank(str1: string, ch: char) returns (res: string)
    ensures |res| == |str1| // Postcondition 1: Result length matches input
    ensures forall i: int :: 0 <= i < |str1| ==> // Postcondition 2: Character replacement rules
        (str1[i] == ' ' ==> res[i] == ch) && 
        (str1[i] != ' ' ==> res[i] == str1[i])
{
    // Method implementation would go here
}
```