```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result ==> (|sub| == 0 || (exists j: int | 0 <= j <= |main| - |sub| :: (forall i: int | 0 <= i < |sub| :: main[j + i] == sub[i])))
  ensures !result ==> (|sub| != 0 && (forall j: int | 0 <= j <= |main| - |sub| :: (exists i: int | 0 <= i < |sub| :: main[j + i] != sub[i])))
{
  // Method implementation not provided
}
```