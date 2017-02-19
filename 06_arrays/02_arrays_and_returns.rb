arr = ["b", "a"]
arr = arr.product(Array(1..3))
# p arr
# ^ expect: [["b", "1"], ["b", 2], ["b", 3], ["a", "1"], ["a", 2], ["a", 3]]
# YES!
arr.first.delete(arr.first.last)
# p arr
# ^ expect that arr looks like this:
# [["b"], ["b", 2], ["b", 3], ["a", "1"], ["a", 2], ["a", 3]]
# YES!
#
# What is the return value? It's the element that was deleted, i.e., 1

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # notice the extra brackets!

# p arr
# ^ expect that arr looks like this:
# [["b",[1, 2, 3]],["b",[1, 2, 3]]]
# YES!
arr.first.delete(arr.first.last)
# p arr
# ^ expect that arr looks like this:
# [["b"],["b",[1, 2, 3]]]
# YES!
#
# What is the return value? It's the element that was deleted, i.e., [1, 2, 3]
