```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0
    ensures res <==> (
        number >=0 && (
            number == 0 || (
                number >0 && (
                    exists k: int :: 
                        k >=1 && 
                        (number as real) >= (10 as real).pow(k-1) && 
                        (number as real) < (10 as real).pow(k) && 
                        number == sum i | 0 <= i < k :: (
                            var digit := (number / (10 as int).pow(i)) % 10; 
                            digit * (10 as int).pow(0) * (if k >1 then digit else 1) * (if k >2 then digit else 1) // Manual k-th power expansion
                        )
                )
            )
        )
    )
```