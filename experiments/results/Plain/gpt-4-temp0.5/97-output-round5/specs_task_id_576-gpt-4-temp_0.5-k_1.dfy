```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
    requires sub != null && main != null // The input sequences must not be null
    requires |sub| <= |main| // The length of the subsequence must be less than or equal to the length of the main sequence
    ensures result == true ==> (exists i :: 0 <= i < |main| - |sub| + 1 && sub == main[i..i + |sub|]) // If the result is true, then the subsequence exists in the main sequence
    ensures result == false ==> (forall i :: 0 <= i < |main| - |sub| + 1 ==> sub != main[i..i + |sub|]) // If the result is false, then the subsequence does not exist in the main sequence
{}
```