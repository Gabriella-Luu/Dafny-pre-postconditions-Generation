```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0
    ensures res == true <==> (exists i :: 0 <= i < 10 && i * i * i == number) || (number == 1)
    ensures res == false <==> !(exists i :: 0 <= i < 10 && i * i * i == number) && number != 1
```