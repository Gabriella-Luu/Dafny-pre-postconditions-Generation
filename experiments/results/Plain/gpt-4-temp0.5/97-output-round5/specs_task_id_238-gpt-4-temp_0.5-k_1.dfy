```dafny
method numberOfSubstrings(str: string) returns (res: int)
    requires str != null // The string must not be null
    ensures res >= 0 // The result must be a non-negative integer
    ensures res == str.Length * (str.Length + 1) / 2 // The result must be equal to the total number of non-empty substrings
{
    // Method implementation goes here
}
```