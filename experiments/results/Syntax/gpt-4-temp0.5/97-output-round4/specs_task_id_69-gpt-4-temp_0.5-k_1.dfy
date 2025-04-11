```dafny
method isSublist(list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires forall seqInList :: seqInList in list ==> |seqInList| >= |sub|
  ensures res ==> exists listSeq :: listSeq in list && (exists startIndex :: 0 <= startIndex <= |listSeq| - |sub| && forall i :: 0 <= i < |sub| ==> listSeq[startIndex + i] == sub[i])
  ensures !res ==> forall listSeq :: listSeq in list ==> !(exists startIndex :: 0 <= startIndex <= |listSeq| - |sub| && forall i :: 0 <= i < |sub| ==> listSeq[startIndex + i] == sub[i])
{
}
```