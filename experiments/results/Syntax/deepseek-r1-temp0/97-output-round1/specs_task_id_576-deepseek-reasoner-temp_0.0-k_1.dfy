```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
    ensures result <==> (
        (|sub| == 0) || 
        (|sub| <= |main| && 
            (exists j | 0 <= j <= |main| - |sub| :: 
                (forall i | 0 <= i < |sub| :: main[j + i] == sub[i])
            )
        )
    )
{
    // Implementation not required for this task
}
```