```dafny
method IsPrime(n: int) returns (result: bool)
  requires n > 1  // The input integer must be greater than 1, as 1 is not considered a prime number.
  ensures result == true ==> (forall i :: 2 <= i < n ==> n % i != 0)  // If the result is true, it means n is a prime number. Therefore, n should not be divisible by any number between 2 and n-1.
  ensures result == false ==> (exists i :: 2 <= i < n && n % i == 0)  // If the result is false, it means n is not a prime number. Therefore, there should exist a number between 2 and n-1 that can divide n.
```