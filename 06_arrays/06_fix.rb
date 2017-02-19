# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# fix the error!

# two ways we could approach this.
# if we know the index of 'margaret' by heart, then we can do it like this:
names_2 = ['bob', 'joe', 'susan', 'margaret']
names_2[3] = 'jody' # simpler, also works ...
p names_2

# if we do not know the index (maybe it's a huge array ...), then this might be better ...
names = ['bob', 'joe', 'susan', 'margaret']
names[names.index('margaret')] = 'jody' # a little silly, but it works ...
p names

# now suppose our array might contain redundancies, but we can't be sure
# we also don't want to eliminate the redundancies, for some reason (otherwise we could use uniq!)
# so let's assume that the array is like this:
names_3 = ['bob', 'bob', 'joe', 'margaret', 'susan', 'margaret']

# now let's replace 'margaret' with 'jody' throughout
# we make use of the following fact:
# p names_3.index('gandalf') # => nil
# in other words, if we cannot find an index for some value, the index method will return nil
# let's use this:
while names_3.index('margaret')
  names_3[names_3.index('margaret')] = 'jody'
end

p names_3
# => ["bob", "bob", "joe", "jody", "susan", "jody"]
