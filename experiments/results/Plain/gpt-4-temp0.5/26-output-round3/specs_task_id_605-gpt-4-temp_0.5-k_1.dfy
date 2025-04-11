```dafny
method IsPrime(n: int) returns (result: bool)
  requires n > 1  // The input number must be greater than 1 as prime numbers are greater than 1
  ensures 
    (result == true ==> (forall k :: 2 <= k < n ==> n % k != 0)) &&  // If the result is true, then the number is not divisible by any number between 2 and n-1
    (result == false ==> (exists k :: 2 <= k < n && n % k == 0))  // If the result is false, then the number is divisible by at least one number between 2 and n-1
{}
```