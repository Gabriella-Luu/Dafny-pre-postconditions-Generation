```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  requires sub != null && main != null
  ensures (result == true) ==> exists i :: 0 <= i < |main| - |sub| + 1 && sub == main[i..i + |sub|]
  ensures (result == false) ==> forall i :: 0 <= i < |main| - |sub| + 1 ==> sub != main[i..i + |sub|]
{
  // Method implementation goes here
}
```