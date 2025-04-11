```dafny
method checkChar(str: string) returns (res: bool)
  requires |str| > 0
  ensures res == (str[0] == str[|str| - 1])
{
  // Implementation not provided
}
```