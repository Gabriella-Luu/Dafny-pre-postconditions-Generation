```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
    requires a != null // The given array must not be null
    ensures forall i :: 0 <= i < a.Length ==> n > a[i] ==> result == true // If n is greater than all elements in the array, result is true
    ensures (exists i :: 0 <= i < a.Length && n <= a[i]) ==> result == false // If there is at least one element in the array that is greater or equal to n, result is false
```