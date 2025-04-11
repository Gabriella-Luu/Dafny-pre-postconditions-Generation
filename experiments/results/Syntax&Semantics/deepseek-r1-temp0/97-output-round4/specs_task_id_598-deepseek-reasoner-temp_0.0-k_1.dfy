```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res <==> (
    number >=0 && (
      (number == 0) || (
        number >0 && (
          exists k: int, s: int :: 
            k >0 && 
            (10^(k-1) <= number || number ==0) && 
            s == number && 
            s == (if number ==0 then 0 else (
              (var n := number; var sum := 0; var digits := k;
              (n ==0 && sum ==0) || 
              (n >0 && sum == (n%10)^digits + (var remaining := n/10; sum)))
        )
      )
    )
  )
```