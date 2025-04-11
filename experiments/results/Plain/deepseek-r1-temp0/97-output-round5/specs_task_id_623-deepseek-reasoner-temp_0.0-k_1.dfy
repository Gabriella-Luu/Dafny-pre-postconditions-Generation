```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
   requires n >= 0
   requires n != 0 || (forall x :: x in list ==> x != 0)
   ensures |res| == |list|
   ensures forall i :: 0 <= i < |list| ==> res[i] == list[i]^n
{
   // Implementation not provided
}
```