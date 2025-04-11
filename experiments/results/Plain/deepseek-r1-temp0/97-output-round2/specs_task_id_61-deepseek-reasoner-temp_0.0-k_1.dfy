```dafny
function method SumDigits(s: string): int
  requires forall k | 0 <= k < |s| :: '0' <= s[k] <= '9'
{
  if s == "" then 0
  else (s[0] as int - '0' as int) + SumDigits(s[1..])
}

method countSubstrings(str:string) returns (res:int)
  requires forall i | 0 <= i < |str| :: str[i] >= '0' && str[i] <= '9'
  ensures res == |[ i, j | 0 <= i <= j <= |str| && SumDigits(str[i..j]) == j - i ]|
```