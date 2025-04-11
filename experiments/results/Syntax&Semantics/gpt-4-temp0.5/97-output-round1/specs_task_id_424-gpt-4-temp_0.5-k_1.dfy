```dafny
method extractRear(strList:seq<string>) returns (res: seq<char>)
    requires forall s :: s in strList ==> |s| > 0
    ensures |res| == |strList|
    ensures forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]
```