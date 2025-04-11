```dafny
method medianNumbers(a:int,b:int,c:int) returns (median:int)
    ensures (median == a && median >= b && median <= c) || 
            (median == a && median >= c && median <= b) || 
            (median == b && median >= a && median <= c) || 
            (median == b && median >= c && median <= a) || 
            (median == c && median >= a && median <= b) || 
            (median == c && median >= b && median <= a)
{
    // Implementation goes here
}
```