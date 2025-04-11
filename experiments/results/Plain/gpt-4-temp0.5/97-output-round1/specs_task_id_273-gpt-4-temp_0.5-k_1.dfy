```dafny
method substractElements(s1:seq<int>, s2:seq<int>) returns (res:seq<int>)
  requires s1.Length == s2.Length
  ensures res.Length == s1.Length
  ensures forall i :: 0 <= i < s1.Length ==> res[i] == s1[i] - s2[i]
```