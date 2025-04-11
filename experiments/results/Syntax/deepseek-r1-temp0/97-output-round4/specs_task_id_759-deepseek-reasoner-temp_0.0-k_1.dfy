```dafny
method isDecimal(str:string) returns (res:bool)
  ensures res <==> (
    exists i :: 0 <= i < |str| &&
    str[i] == '.' &&
    (forall j :: 0 <= j < |str| && j !=i ==> str[j] != '.') &&
    |str| == i + 3 &&
    (forall j :: 0 <= j < i ==> '0' <= str[j] <= '9') &&
    (forall k :: i+1 <= k < |str| ==> '0' <= str[k] <= '9')
  )
```