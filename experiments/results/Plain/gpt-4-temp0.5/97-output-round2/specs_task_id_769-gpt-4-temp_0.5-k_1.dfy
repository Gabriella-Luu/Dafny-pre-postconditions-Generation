```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires a != null && b != null
  ensures forall i :: 0 <= i < |diff| ==> diff[i] in a && diff[i] !in b
  ensures forall i :: 0 <= i < |a| ==> (a[i] in b ==> a[i] !in diff)
```
The precondition checks if the input lists are not null. The postconditions ensure that all the elements in the returned list are in the first list and not in the second list. Also, it ensures that if an element is in the first list and also in the second list, then it's not in the returned list.