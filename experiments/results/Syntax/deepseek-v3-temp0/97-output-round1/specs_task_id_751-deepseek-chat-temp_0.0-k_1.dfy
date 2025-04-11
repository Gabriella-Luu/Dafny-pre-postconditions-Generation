```dafny
method checkMinHeap(arr1: array<int>) returns (res: bool)
  requires arr1 != null
  ensures res == (forall i :: 0 <= i < arr1.Length ==> 
                  (2*i + 1 >= arr1.Length || arr1[i] <= arr1[2*i + 1]) &&
                  (2*i + 2 >= arr1.Length || arr1[i] <= arr1[2*i + 2]))
```
### Explanation:
- **Precondition (`requires`):** 
  - `arr1 != null`: Ensures that the array is not null, which is necessary to avoid null reference errors.
  
- **Postcondition (`ensures`):**
  - `res == (forall i :: 0 <= i < arr1.Length ==> ...)`: Ensures that the result `res` is `true` if and only if the array satisfies the min-heap property.
  - The min-heap property is checked by ensuring that for every index `i`, the element at `i` is less than or equal to its left child (`2*i + 1`) and right child (`2*i + 2`), if they exist.
  - The conditions `2*i + 1 >= arr1.Length` and `2*i + 2 >= arr1.Length` ensure that we do not access out-of-bounds indices.