```dafny
method isDecimal(str:string) returns (res:bool)
  ensures res <==> (
    exists i :: 1 <= i < |str| && str[i] == '.' && |str| == i + 3 &&
    (forall j :: 0 <= j < |str| && j != i ==> str[j] != '.') &&
    '0' <= str[i+1] <= '9' && '0' <= str[i+2] <= '9' &&
    (
      (str[0] in ['+', '-'] && i > 1 && (forall k :: 1 <= k < i ==> '0' <= str[k] <= '9')) ||
      (forall k :: 0 <= k < i ==> '0' <= str[k] <= '9')
    )
  )
```