```dafny
method countSubstrings(str:string) returns (res:int)
  ensures res >= 0
  ensures forall i, j :: 0 <= i <= j < |str| ==> (
    (sum k | i <= k <= j && '0' <= str[k] <= '9' :: (str[k] as int - '0' as int)) == j - i + 1 ==> res > 0
  )
  ensures forall i, j :: 0 <= i <= j < |str| ==> (
    (sum k | i <= k <= j && '0' <= str[k] <= '9' :: (str[k] as int - '0' as int)) != j - i + 1 ==> res < old(res) + 1
  )
```