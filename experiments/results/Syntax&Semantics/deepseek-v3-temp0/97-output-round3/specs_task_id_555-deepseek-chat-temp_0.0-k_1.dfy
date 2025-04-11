```dafny
method difference(n: int) returns (diff: int)
  requires n >= 0
  ensures diff == (sumOfCubes(n) - sumOfNumbers(n))
  ensures forall k :: 0 <= k <= n ==> (k * k * k - k) >= 0 ==> diff >= 0
{
  // Implementation not provided
}

function sumOfCubes(n: int): int
  requires n >= 0
  ensures sumOfCubes(n) == (n * (n + 1) / 2) * (n * (n + 1) / 2)

function sumOfNumbers(n: int): int
  requires n >= 0
  ensures sumOfNumbers(n) == n * (n + 1) / 2
```