```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
    ensures forall elem :: elem in res[..] ==> elem in list1[..] && elem !in list2[..]
    ensures forall elem :: elem in list1[..] && elem !in list2[..] ==> elem in res[..]
{
    // Implementation not provided
}
```