# 1's, 0's and wildcards

- [Kata](https://www.codewars.com/kata/588f3e0dfa74475a2600002a) from Codewars.

### DESCRIPTION:

You are given a string containing `0's`, `1's` and one or more `'?'`, where `?` is a wildcard that can be `0` or `1`.

Return an array containing all the possibilities you can reach substituing the `?` for a value.

### Examples
```bash
'101?' -> ['1010', '1011']

'1?1?' -> ['1010', '1110', '1011', '1111']
```

Notes:

- Don't worry about sorting the output.
- Your string will never be empty.

## Test
```bash
$ ruby ones_zeros_wildcards_test.rb
```