```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result <==> (exists i :: 0 <= i <= |main| - |sub| && main[i..i+|sub|] == sub)
{
  // Implementation not provided
}
```