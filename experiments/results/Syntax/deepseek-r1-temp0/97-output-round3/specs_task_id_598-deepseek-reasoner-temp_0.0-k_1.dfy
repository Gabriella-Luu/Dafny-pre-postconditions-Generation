```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res <==> (
    (number == 0) || (
      number > 0 && (exists n: int, sum: int :|
        n >= 1 && 
        (10 as real)*(10 as real)^(n-2) <= (number as real) && (number as real) < (10 as real)^(n-1) &&
        sum == (if n == 1 then number else 0) && // Placeholder for actual sum verification
        sum == number
      )
    )
  )
```