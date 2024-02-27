# Bills to Pay

You have a list of bills to pay, this list is expressed like a sequence of amounts with an array. e.g: [1, 2, 3, 4, 5, 6].

You need to pay those bills in the order they appear. For a reason I can’t remember right now, it is required you can pay it in two payments. Find the way to split the original sequence in two groups in order to minimize the difference between both payments.

### Example
Sample: `[1, 2, 3, 4]` and `[5, 6]`, then your payments will be `10` and `11` respectively. With a difference of `1`. On the other hand, if you choose something different you get a bigger difference. For example choosing: `[1, 2, 3]` and `[4, 5, 6]` you get payment for `6` and `15`, with a difference of `9`.
 
Write a function that returns this minimum difference (in the provided sample, the answer would be `1`).
```ruby
Input: [1, 2, 3, 4, 5, 6]
Output => 1
```

## Test
```bash
$ ruby bills_to_pay.rb
```