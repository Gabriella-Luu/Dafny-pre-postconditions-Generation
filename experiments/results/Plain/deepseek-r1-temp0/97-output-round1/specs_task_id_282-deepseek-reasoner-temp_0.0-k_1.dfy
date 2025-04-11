```dafny
method subtractList(a1:array<int>, a2:array<int>) returns (res:array<int>)
  requires a1 != null
  requires a2 != null
  requires a1.Length == a2.Length
  ensures res != null
  ensures res.Length == a1.Length
  ensures forall i | 0 <= i < res.Length :: res[i] == a1[i] - a2[i]
{
}
```