```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  requires sub != null && main != null // The input sequences should not be null
  requires |sub| <= |main| // The length of the subsequence should not be greater than the main sequence
  ensures result == true ==> exists i :: 0 <= i < |main| - |sub| + 1 && sub == main[i..i + |sub|] // If the result is true, then there exists an index i in the main sequence where the subsequence can be found
  ensures result == false ==> forall i :: 0 <= i < |main| - |sub| + 1 ==> sub != main[i..i + |sub|] // If the result is false, then there is no index i in the main sequence where the subsequence can be found
{
  // Method implementation goes here
}
```