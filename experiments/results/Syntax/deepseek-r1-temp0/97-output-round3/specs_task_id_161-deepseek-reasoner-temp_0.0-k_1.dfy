```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
    ensures exists s: seq<int> |
        (forall i :: 0 <= i < |s| ==> 0 <= s[i] < list1.Length) &&
        (forall i, j :: 0 <= i < j < |s| ==> s[i] < s[j]) &&
        res.Length == |s| &&
        (forall i :: 0 <= i < res.Length ==> res[i] == list1[s[i]]) &&
        (forall k :: 0 <= k < list1.Length && !(list1[k] in list2[..]) ==> k in s)
{
    // Method implementation not provided
}
```