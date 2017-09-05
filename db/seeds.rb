# ruby encoding: utf-8

messages = [
  [ "Hello", 0, 0 ],
  [ "There is enough DNA in an average person’s body to stretch from the sun to Pluto and back — 17 times", 1, 1 ],
  [ "The average person walks the equivalent of five times around the world in a lifetime", 1, 1 ],
  [ "There are 8 times as many atoms in a teaspoonful of water as there are teaspoonfuls of water in the Atlantic ocean", 1, 1 ],
  [ "Charlie Chaplin once won third prize in a Charlie Chaplin look-alike contest", 2, 1 ],
  [ "Rudolph the red-nosed reindeer is actually female.", 2, 1 ],
  [ "Manners is the family name of the Duke of Rutland", 3, 1 ],
  [ "From 1977 to 2011, the national flag of Libya was green.", 3, 1 ],
  [ "Manners is the family name of the Duke of Rutland", 3, 1 ],
  [ "Interesting", 1, 2 ],
  [ "Minnie Mouse's first name is actually Minerva", 2, 2 ],
  [ "Cows produce around 88 pints of saliva per day", 3, 2 ],
  [ "Interesting", 1, 3 ],
  [ "Barbie the doll's last name is Roberts", 2, 3 ],
  [ "Bubble wrap was first designed to be used as wallpaper", 3, 3 ],
  [ "The collective noun for jellyfish is smack", 3, 3 ]
]

messages.each do |text, boring_level, stage|
  Message.create( text: text, boring_level: boring_level, stage: stage )
end

replies = [
  [ "Hi there.", 0, 0 ],
  [ "Hello!", 0, 0 ],
  [ "Howdy", 0, 0 ],
  [ "That's interesting", 1, 1 ],
  [ "Wow!", 1, 1 ],
  [ "Amazing", 1, 1 ],
  [ "Hmm, I see", 2, 1 ],
  [ "Ah...OK", 2, 1 ],
  [ "That's vaguely interesting, I suppose", 2, 1 ],
  [ "Very interesting!", 1, 2 ],
  [ "Ah! Fascinating!", 1, 2 ],
  [ "WOAH! I would love to hear more!", 1, 2 ],
  [ "...OK", 2, 2 ],
  [ "I guess that's interesting", 2, 2 ],
  [ "Hmm", 2, 2 ],
  [ "That's interesting", 1, 3 ],
  [ "Er OK", 2, 3 ],
  [ "Sorry this is too boring. Goodbye.", 3, 1 ],
  [ "YAWN! I don't care. Goodbye.", 3, 1 ],
  [ "ZZZ", 3, 1 ],
  [ "Sorry this is too boring. Goodbye.", 3, 2 ],
  [ "I really, really don't care about this.", 3, 2 ],
  [ "Snooze.", 3, 2 ],
  [ "Sorry this is too boring. Goodbye.", 3, 3 ],
  [ "BOOOOORING", 3, 3 ],
  [ "This is dull conversation.", 3, 3 ]
]

replies.each do |text, tolerance_level, stage|
  Reply.create( text: text, tolerance_level: tolerance_level, stage: stage )
end
