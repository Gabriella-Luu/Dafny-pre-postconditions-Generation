```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0 // The number should be non-negative
    ensures res == true <==> (exists i :: 0 <= i < number && number == sum { j in i..number :: (j % 10) * (j % 10) * (j % 10) }) // The number is an Armstrong number if it equals to the sum of the cubes of its digits
    ensures res == false <==> !(exists i :: 0 <= i < number && number == sum { j in i..number :: (j % 10) * (j % 10) * (j % 10) }) // The number is not an Armstrong number if it does not equal to the sum of the cubes of its digits
```