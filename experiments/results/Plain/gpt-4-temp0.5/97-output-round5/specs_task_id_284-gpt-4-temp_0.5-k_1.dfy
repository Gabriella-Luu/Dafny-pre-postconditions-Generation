```dafny
method checkElement(a1: array<int>, e: int) returns (res: bool)
  requires a1 != null  // The input array must not be null
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] == e ==> res  // The result is true if and only if all elements in the array are equal to e
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] != e ==> !res  // The result is false if any element in the array is not equal to e
{}
```