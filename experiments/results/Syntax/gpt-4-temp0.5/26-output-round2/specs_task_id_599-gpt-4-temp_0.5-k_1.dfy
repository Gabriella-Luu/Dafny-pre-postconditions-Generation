```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 1 // n must be a positive integer to calculate the sum and average of first n natural numbers
  ensures sum == (n * (n + 1)) / 2 // sum of first n natural numbers is given by the formula n(n+1)/2
  ensures average == (sum as real) / (n as real) // average is the sum divided by the number of elements n
{
  // Method implementation would go here
}
```