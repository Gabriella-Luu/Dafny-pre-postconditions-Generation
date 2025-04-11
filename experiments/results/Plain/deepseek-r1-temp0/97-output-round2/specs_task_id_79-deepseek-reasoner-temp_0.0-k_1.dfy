```dafny
method wordLen(str: string) returns (res: bool)
  requires str != null
  ensures res == (str.Length % 2 == 1)
```