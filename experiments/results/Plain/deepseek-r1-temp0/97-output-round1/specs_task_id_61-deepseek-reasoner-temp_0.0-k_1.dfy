```dafny
function sumDigits(s: string): int
  requires forall c :: c in s ==> '0' <= c <= '9'
  reads s
{
  if s == "" then 0 else
    (s[0] as int - '0' as int) + sumDigits(s[1..])
}

method countSubstrings(str:string) returns (res:int)
  requires forall c :: c in str ==> '0' <= c <= '9'
  ensures res == |{ i: int, j: int | 0 <= i < j <= |str| && sumDigits(str[i..j]) == j - i }|
{
  // Dafny method without implementation
}
```