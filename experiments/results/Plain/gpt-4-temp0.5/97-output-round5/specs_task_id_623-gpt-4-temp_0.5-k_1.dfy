```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
    requires n >= 0 // n must be a non-negative integer
    requires list != null // list must not be null
    ensures |res| == |list| // The size of the result list should be the same as the input list
    ensures forall i :: 0 <= i < |list| ==> res[i] == list[i] ** n // Each element in the result list should be the n-th power of the corresponding element in the input list
    {
        // Method implementation goes here
    }
```