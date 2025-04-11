```dafny
method extractRear(strList:seq<string>) returns (res: seq<char>)
  requires forall i :: 0 <= i < |strList| ==> |strList[i]| > 0
  ensures |res| == |strList|
  ensures forall j :: 0 <= j < |res| ==> res[j] == strList[j][(|strList[j]| - 1)]
{
}
```