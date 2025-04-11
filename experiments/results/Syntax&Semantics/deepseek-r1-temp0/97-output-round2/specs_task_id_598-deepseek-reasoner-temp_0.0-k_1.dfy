```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res <==> (
    (number == 0) || (
      number > 0 &&
      (exists k: nat, sum: nat | 
        k > 0 && 10^(k-1) <= number < 10^k &&
        sum == (sum i | 0 <= i < k :: ((number / 10^i) % 10)^k) &&
        sum == number
      )
    )
  )
```