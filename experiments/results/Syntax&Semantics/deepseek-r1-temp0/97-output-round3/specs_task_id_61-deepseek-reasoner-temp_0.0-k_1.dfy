```dafny
method countSubstrings(str: string) returns (res: int)
  requires forall i :: 0 <= i < |str| ==> '0' <= str[i] <= '9'
  ensures res == (sum i,j | 0 <= i <= j <= |str| && (sum k | i <= k < j :: (str[k] as int - '0' as int)) == (j - i) :: 1)
```