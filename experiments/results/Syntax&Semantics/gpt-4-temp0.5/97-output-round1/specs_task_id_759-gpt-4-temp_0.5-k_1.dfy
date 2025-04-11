```dafny
method isDecimal(str: string) returns (res: bool)
  requires str != null
  ensures res <==> (
    (|str| > 0 && str[0] in {'-', '+'}) || ('0' <= str[0] <= '9')
  ) && (
    forall i :: 1 <= i < |str| ==> (
      if i < |str| - 3 then
        '0' <= str[i] <= '9'
      else if i == |str| - 3 then
        str[i] == '.'
      else
        '0' <= str[i] <= '9'
    )
  )
```