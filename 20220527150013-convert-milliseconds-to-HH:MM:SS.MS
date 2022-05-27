# convert milliseconds to HH:MM:SS.MS


+time +timestamp +python +millisecond


Here is a Python code snippet showing how to convert milliseconds to a
timestamp.

This implementation relies on the `divmod` Python built-in function to
get the remained of that can be used for later calcuations.


```python
def format(ms: int) -> str:
    s, ms = divmod(ms, 1000)
    m, s = divmod(s, 60)
    h, m = divmod(m, 60)
    return f"{h:02d}:{m:02d}:{s:02d}.{ms}"

print(format(123123))
```

The output would be `00:02:03.123` if you do `!6jpython3<CR>` in Vim.
