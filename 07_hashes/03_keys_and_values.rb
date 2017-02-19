family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


family.each_key { |key|  p key }
family.each_value { |value|  p value }
family.each { |key, value| p key; p value }
