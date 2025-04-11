```dafny
method numberOfSubstrings(str: string) returns (res: int)
  ensures res == (|str| * (|str| + 1)) / 2
{
  // Implementation would calculate total substrings via formula or iteration
}
```