```dafny
method armstrongNumber(number:int) returns (res:bool)
   requires number >= 0
   ensures res <==> (number >= 0 && (
      (number == 0) || (
         number > 0 &&
         (exists k: int, sum: int :: 
            k >= 1 &&
            (10 as int) * (k-1) <= number < (10 as int) * k &&
            sum == (number % 10) * (number % 10) * (number % 10) + ((number / 10) % 10) * ((number / 10) % 10) * ((number / 10) % 10) + ... && 
            sum == number
         )
      )
   ))
```