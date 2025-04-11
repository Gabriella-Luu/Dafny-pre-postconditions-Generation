```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  // Precondition: n must be a positive natural number
  requires n >= 1
  // Postcondition 1: Sum matches formula for first n natural numbers
  ensures sum == n * (n + 1) / 2
  // Postcondition 2: Average is correct real-valued mean
  ensures average == sum as real / (n as real)
{
  // Method implementation would go here
}
```