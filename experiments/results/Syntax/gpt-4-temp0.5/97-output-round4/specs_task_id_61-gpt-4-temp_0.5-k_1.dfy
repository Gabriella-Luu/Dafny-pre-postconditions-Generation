```dafny
method countSubstrings(str: string) returns (res: int)
  requires forall i :: 0 <= i < |str| ==> str[i] >= '0' && str[i] <= '9'
  ensures forall i, j :: 0 <= i <= j < |str| ==> 
    (res >= 0 && res <= (j - i + 1) && 
    (sum(j - i + 1) == (j - i + 1) ==> res >= 1))
  where 
    sum(n: int): int
      requires n >= 0
      reads `str`
      decreases n
    {
      if n == 0 then 0
      else str[n - 1] - '0' + sum(n - 1)
    }
```