```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
  ensures result == (exists x :: x in a[..] && x in b[..])
{
}
```