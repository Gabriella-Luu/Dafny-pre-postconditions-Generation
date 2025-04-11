```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
    requires sub != null && main != null //Precondition: None of the sequences should be null
    requires forall i :: 0 <= i < |sub| ==> sub[i] in main //Precondition: All elements in the 'sub' sequence should be present in the 'main' sequence
    ensures result == true ==> (exists i :: 0 <= i < |main|-|sub|+1 && sub == main[i..i+|sub|]) //Postcondition: If the result is true, then 'sub' sequence should exist in 'main' sequence
    ensures result == false ==> (forall i :: 0 <= i < |main|-|sub|+1 ==> sub != main[i..i+|sub|]) //Postcondition: If the result is false, then 'sub' sequence should not exist in 'main' sequence
{}
```