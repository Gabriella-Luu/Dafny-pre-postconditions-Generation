```dafny
method extractRear(strList: seq<string>) returns (res: seq<char>)
  requires forall str :: str in strList ==> |str| > 0; // Each string in the list should not be empty
  ensures |res| == |strList|; // The result sequence should have the same length as the input sequence
  ensures forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]; // Each character in the result sequence should be the last character of the corresponding string in the input sequence
```