```dafny
method isDecimal(str:string) returns (res:bool)
  requires str != null
  ensures (
    res <==> (
      exists i :: 0 <= i < |str| && str[i] == '.' &&
      forall j :: i+1 < j < |str| ==> str[j] >= '0' && str[j] <= '9' &&
      |str| - i - 1 <= 2
    )
  )
```