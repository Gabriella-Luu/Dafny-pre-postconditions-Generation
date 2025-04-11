```dafny
method dogAge(hAge:int) returns (res:int)
  requires hAge >= 0 // Human age must be non-negative
  ensures res >= 0 // Dog's age in dog's years must be non-negative
  ensures hAge == 0 ==> res == 0 // If human age is 0, dog's age in dog's years is also 0
  ensures hAge > 0 ==> res > 0 // If human age is greater than 0, dog's age in dog's years is also greater than 0
{
}
```