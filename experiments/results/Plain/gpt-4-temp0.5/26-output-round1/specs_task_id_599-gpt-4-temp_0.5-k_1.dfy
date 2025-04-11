```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 0 // Precondition: n should be a non-negative integer
  ensures sum >= 0 // Postcondition: Sum should be a non-negative integer
  ensures sum == (n*(n+1))/2 // Postcondition: Sum should be equal to the sum of first n natural numbers
  ensures average >= 0.0 // Postcondition: Average should be a non-negative real number
  ensures n > 0 ==> average == sum/n // Postcondition: If n is not zero, the average should be sum divided by n
  ensures n == 0 ==> average == 0.0 // Postcondition: If n is zero, the average should be zero
{
  // Method implementation goes here
}
```