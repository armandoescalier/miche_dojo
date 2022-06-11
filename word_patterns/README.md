# Word Patterns

[Kata](https://www.codewars.com/kata/562846dd1f77ab7c00000033) from Codewars.

Write

```ruby
word_pattern(pattern, string)
```
that given a `pattern` and a string `str`, find if `str` follows the same sequence as `pattern`. 

For example:
```ruby
word_pattern('abab', 'truck car truck car') == true
word_pattern('aaaa', 'dog dog dog dog') == true
word_pattern('abab', 'apple banana banana apple') == false
word_pattern('aaaa', 'cat cat dog cat') == false
```

#### Note: Each letter in the pattern stands for a distinct word

## Test
```bash
$ ruby word_patterns_test.rb
```