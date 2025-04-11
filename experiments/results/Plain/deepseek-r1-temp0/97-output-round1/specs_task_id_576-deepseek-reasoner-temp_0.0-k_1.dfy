```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result == (
    if |sub| == 0 then true
    else |sub| <= |main| && (
      exists i: int :: 
        0 <= i <= |main| - |sub| && 
        (forall j: int :: 
          0 <= j < |sub| ==> 
          main[i + j] == sub[j]
        )
    )
  )
```