```dafny
method toggleString(str:string) returns (res:string)
  requires true
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==>
    ((str[i] >= 'a' && str[i] <= 'z') ==> res[i] == str[i] - 'a' + 'A') &&
    ((str[i] >= 'A' && str[i] <= 'Z') ==> res[i] == str[i] - 'A' + 'a') &&
    ((str[i] < 'A' || (str[i] > 'Z' && str[i] < 'a') || str[i] > 'z') ==> res[i] == str[i])
```