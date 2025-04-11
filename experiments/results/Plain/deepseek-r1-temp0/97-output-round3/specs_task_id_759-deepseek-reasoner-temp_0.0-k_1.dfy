```dafny
predicate AllDigits(s: string)
{
  if s == "" then true else
  '0' <= s[0] <= '9' && AllDigits(s[1..])
}

method isDecimal(str:string) returns (res:bool)
  ensures res == exists i: int | 0 <= i < |str| && str[i] == '.' 
    && (forall j: int | 0 <= j < |str| && j != i :: str[j] != '.') 
    && i + 3 == |str| 
    && '0' <= str[i+1] <= '9' 
    && '0' <= str[i+2] <= '9' 
    && (i == 0 || (i > 0 && (
        (str[0] == '+' || str[0] == '-') && AllDigits(str[1..i]) 
        || AllDigits(str[0..i])))
{
  // Method implementation not provided
}
```