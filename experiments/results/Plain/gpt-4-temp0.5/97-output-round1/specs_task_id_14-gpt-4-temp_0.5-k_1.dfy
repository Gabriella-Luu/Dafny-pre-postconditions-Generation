```dafny
method findVolume(base: int, height: int, length: int) returns (volume: int)
    requires base > 0 && height > 0 && length > 0; // The dimensions of the prism must be positive
    ensures volume == base * height * length / 2; // The volume of a triangular prism is half the product of its base, height and length
```