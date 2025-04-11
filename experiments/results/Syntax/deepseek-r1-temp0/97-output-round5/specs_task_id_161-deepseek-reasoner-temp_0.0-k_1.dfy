```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  ensures res != null
  ensures forall x :: x in res[..] ==> x in list1[..] && !(x in list2[..])
  ensures forall x :: x in list1[..] && !(x in list2[..]) ==> x in res[..]
  ensures exists indices: seq<int> | |indices| == res.Length 
    && (forall m :: 0 <= m < |indices| ==> (0 <= indices[m] < list1.Length 
        && list1[indices[m]] == res[m] 
        && !(list1[indices[m]] in list2[..]))) 
    && (forall m, n :: 0 <= m < n < |indices| ==> indices[m] < indices[n])
{
  // Method implementation not provided
}
```