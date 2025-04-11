```dafny
method difference(n: int) returns (diff: int)
  requires n >= 0
  ensures diff == (sumOfCubes(n) - sumOfNumbers(n))
  ensures diff >= 0
{
  // Implementation not provided
}

function sumOfCubes(n: int): int
  requires n >= 0
  ensures sumOfCubes(n) == if n == 0 then 0 else sumOfCubes(n-1) + n*n*n

function sumOfNumbers(n: int): int
  requires n >= 0
  ensures sumOfNumbers(n) == if n == 0 then 0 else sumOfNumbers(n-1) + n
```