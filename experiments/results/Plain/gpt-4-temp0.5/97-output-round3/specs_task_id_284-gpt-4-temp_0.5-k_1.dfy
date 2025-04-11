```dafny
method checkElement(a1:array<int>, e:int) returns (res:bool)
  requires a1 != null  // the array should not be null
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] == e ==> res // if all elements in the array are equal to e, then res is true
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] != e ==> !res // if any element in the array is not equal to e, then res is false
{}
```