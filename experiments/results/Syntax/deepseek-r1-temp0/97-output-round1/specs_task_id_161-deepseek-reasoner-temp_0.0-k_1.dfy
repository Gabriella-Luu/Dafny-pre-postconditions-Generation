```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  ensures (exists idxs: seq<int> :: 
    (|idxs| == res.Length) && 
    (forall m :: 0 <= m < |idxs| ==> 0 <= idxs[m] < list1.Length) && 
    (forall m :: 0 <= m < |idxs| ==> !(list1[idxs[m]] in list2[..])) && 
    (forall m, n :: 0 <= m < n < |idxs| ==> idxs[m] < idxs[n]) && 
    (forall j :: 0 <= j < list1.Length && !(list1[j] in list2[..]) ==> j in idxs) && 
    (forall m :: 0 <= m < res.Length ==> res[m] == list1[idxs[m]]))
{
}
```