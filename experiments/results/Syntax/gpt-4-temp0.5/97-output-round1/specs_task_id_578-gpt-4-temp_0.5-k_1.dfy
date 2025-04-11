```dafny
method interleaveLists(list1: seq<int>, list2: seq<int>, list3: seq<int>) returns (merged: seq<int>)
    requires |list1| == |list2| && |list2| == |list3|
    ensures |merged| == 3 * |list1|
    ensures forall i :: 0 <= i < |list1| ==> (merged[3*i] == list1[i] && merged[3*i+1] == list2[i] && merged[3*i+2] == list3[i])
```