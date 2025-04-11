```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
    ensures forall i: int :: 0 <= i < res.Length ==> (res[i] in list1[..] && !(res[i] in list2[..]))
    ensures forall j: int :: 0 <= j < list1.Length && !(list1[j] in list2[..]) ==> (exists i: int :: 0 <= i < res.Length && res[i] == list1[j])
    ensures (forall m: int, n: int :: 
        0 <= m < n < list1.Length && !(list1[m] in list2[..]) && !(list1[n] in list2[..]) 
        ==> (exists i: int, j: int :: 
            0 <= i < j < res.Length && res[i] == list1[m] && res[j] == list1[n]))
{
    // Method implementation not provided
}
```