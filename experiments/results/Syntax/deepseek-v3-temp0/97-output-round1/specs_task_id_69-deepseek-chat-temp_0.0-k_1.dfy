```dafny
method isSublist(list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires |list| >= 0
  requires |sub| >= 0
  ensures res == (exists i :: 0 <= i < |list| && list[i] == sub)
{
  // Implementation not provided
}
```