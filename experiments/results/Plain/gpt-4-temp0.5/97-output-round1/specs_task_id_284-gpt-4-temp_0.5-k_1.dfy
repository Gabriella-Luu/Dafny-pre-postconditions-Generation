```dafny
method checkElement(a1:array<int>, e:int) returns (res:bool)
  requires a1 != null // array must not be null
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] == e ==> res // if all elements are equal to 'e', result is true
  ensures forall i :: 0 <= i < a1.Length ==> a1[i] != e ==> !res // if any element is not equal to 'e', result is false
  {
    // Method implementation goes here
  }
```