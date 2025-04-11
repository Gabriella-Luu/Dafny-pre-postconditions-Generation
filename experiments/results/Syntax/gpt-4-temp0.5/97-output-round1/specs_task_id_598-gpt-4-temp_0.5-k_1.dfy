```dafny
method armstrongNumber(number: int) returns (res: bool)
    requires number >= 0
    ensures (res == true) <==> (exists i :: 0 <= i < number && (number == sum { j in 0..i :: (number div (10^j) mod 10) * (number div (10^j) mod 10) * (number div (10^j) mod 10) }))
    ensures (res == false) <==> !(exists i :: 0 <= i < number && (number == sum { j in 0..i :: (number div (10^j) mod 10) * (number div (10^j) mod 10) * (number div (10^j) mod 10) }))
```