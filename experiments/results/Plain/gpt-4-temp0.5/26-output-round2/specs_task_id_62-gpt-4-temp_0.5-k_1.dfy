```dafny
method FindSmallest(s: array<int>) returns (min: int)
  requires s != null && s.Length > 0 // The array must not be null and must have at least one element
  ensures forall i :: 0 <= i < s.Length ==> min <= s[i] // The returned minimum is less than or equal to all elements in the array
  ensures exists i :: 0 <= i < s.Length && min == s[i] // The returned minimum exists in the array
{
  // Method implementation goes here
}
```