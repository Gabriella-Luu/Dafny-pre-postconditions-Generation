```dafny
method countSubstrings(str: string) returns (res: int)
  requires forall c :: c in str ==> '0' <= c <= '9'
  ensures res == |{ i, j | 0 <= i < j <= |str| && 
    (sum k | i <= k < j :: (str[k] as int - '0' as int)) == j - i }|
{
  // Implementation not provided
}
```