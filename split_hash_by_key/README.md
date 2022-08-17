# Split hash by key(s)

- [Kata](https://www.codewars.com/kata/52d0f9bc48155f574c0001b7/ruby) from Codewars.

## Description

Write a method which takes arguments:

- hash
- keys (comma-separated symbols or strings)

and it splits hash by given keys and returns array of hashes.

#### Considerations
- If a key given as an argument is not present in the hash, the method should raise an exception
- In case there are any empty hash after splitting, it should be removed from resultant array.

For example:

```ruby
# returns [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e )

#returns [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f )

#returns [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]
split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' )

#returns [ {:a => 1, :b => 2} ]
split_hash_by_key( {:a => 1, :b => 2}, :a )

# raises an exception
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' )
```

## Test
Run this command within `split_hash_by_key` directory:
```bash
$ ruby split_hash_by_key_test.rb
```
