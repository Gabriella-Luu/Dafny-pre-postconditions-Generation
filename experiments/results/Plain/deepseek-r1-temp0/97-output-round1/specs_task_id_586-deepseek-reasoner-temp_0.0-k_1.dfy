```dafny
method splitArr(l: seq<int>, n:int) returns (part:seq<int>)
   requires 0 <= n <= |l| // n must be a valid split position within the list bounds
   ensures part == l[n..] + l[..n] // Result is latter portion followed by former portion
{
}
```