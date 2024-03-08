# Sort by Weight

You must sort the numbers by their weight, which is calculated by adding the digits of the original number, for example: `123` has a weight of `6`.

In the event that 2 numbers have the same weight, they must be ordered from least to greatest taking into account the original number, for example `27` and `54` weigh `9`, but `27` is less than `54` so it must come first in the final result.

```bash
 Input: [123,27,151,323,32,54]
 Weight: 6,9,7,8,5,9
 Output: 32,123,151,323,27,54
```

## Test
```bash
$ ruby sort_by_weight_test.rb
```