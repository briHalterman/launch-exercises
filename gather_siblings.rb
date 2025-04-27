family = {  uncles: ["bob", "dave", "george"],
            sisters: ["brittany", "laura", "kelsey", "jenny"],
            brothers: ["gary", "steven"],
            aunts: ["sharon", "ethel", "bert"]
          }

sisters = { sisters: family[:sisters] }
brothers = { brothers: family[:brothers] }

siblings = sisters.merge(brothers)
siblings = siblings.values.flatten

puts siblings