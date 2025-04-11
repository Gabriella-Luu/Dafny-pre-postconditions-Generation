```dafny
method countSubstrings(str:string) returns (res:int)
  ensures res >= 0
  ensures forall i,j :: 0 <= i < j <= |str| && (sum k | i <= k < j :: (if '0' <= str[k] <= '9' then str[k] as int - '0' as int else 0)) == j - i ==> res > 0
```