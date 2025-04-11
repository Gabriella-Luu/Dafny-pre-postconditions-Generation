```dafny
predicate AllDigits(s: string)
{
  forall i | 0 <= i < |s| :: '0' <= s[i] <= '9'
}

method isDecimal(str:string) returns (res:bool) 
  ensures res <==> (
    str != "" &&
    (
      // Case with sign
      ( (str[0] == '+' || str[0] == '-') 
        && (
          // Signed with digits before decimal
          (exists i: int | 1 <= i < |str| -2 :: 
            str[i] == '.' && 
            AllDigits(str[1..i]) && 
            |str| == i + 3 && 
            AllDigits(str[i+1..])
          || 
          // Signed with only decimal part
          (|str| == 4 && str[1] == '.' && AllDigits(str[2..4]))
        )
      ) 
      || 
      // Case without sign
      ( !(str[0] == '+' || str[0] == '-') 
        && (
          // Unsigned with digits before decimal
          (exists i: int | 0 < i < |str| -2 :: 
            str[i] == '.' && 
            AllDigits(str[0..i]) && 
            |str| == i + 3 && 
            AllDigits(str[i+1..])
          || 
          // Unsigned with only decimal part
          (|str| == 3 && str[0] == '.' && AllDigits(str[1..3]))
        )
      )
    )
  )
```