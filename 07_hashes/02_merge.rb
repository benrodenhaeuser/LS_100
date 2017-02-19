family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

friends = { zurich: ["achim", "leila"],
            frankfurt: ["dine", "jan"],
            essen: ["patrick", "lena"]
          }

family_and_friends = family.merge friends # non-destructive merge of friends into family

p family_and_friends
p family

family.merge! friends # destructive merge of friends into family

p family
