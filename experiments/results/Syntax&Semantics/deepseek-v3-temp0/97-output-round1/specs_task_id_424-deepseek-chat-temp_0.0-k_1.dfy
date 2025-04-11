```dafny
method extractRear(strList: seq<string>) returns (res: seq<char>)
  requires |strList| > 0
  ensures |res| == |strList|
  ensures forall i :: 0 <= i < |strList| ==> |strList[i]| > 0
  ensures forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]
{
  // Implementation not provided
}
```