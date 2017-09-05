# ruby encoding: utf-8

messages = [
  [ "Hello", 0, 0 ],
  [ "Interesting", 1, 1 ],
  [ "Meh", 2, 1 ],
  [ "Boring", 3, 1 ],
  [ "Interesting", 1, 2 ],
  [ "Meh", 2, 2 ],
  [ "Boring", 3, 2 ],
  [ "Interesting", 1, 3 ],
  [ "Meh", 2, 3 ],
  [ "Boring", 3, 3 ]
]

messages.each do |text, boring_level, stage|
  Message.create( text: text, boring_level: boring_level, stage: stage )
end

replies = [
  [ "Hi there.", 0, 0 ],
  [ "That's interesting", 1, 1 ],
  [ "Er OK", 2, 1 ],
  [ "Interesting", 1, 2 ],
  [ "Meh", 2, 2 ],
  [ "Interesting", 1, 3 ],
  [ "Meh", 2, 3 ],
  [ "Sorry this is too boring. Goodbye.", 3, 1 ],
  [ "Sorry this is too boring. Goodbye.", 3, 2 ],
  [ "Sorry this is too boring. Goodbye.", 3, 3 ]
]

replies.each do |text, tolerance_level, stage|
  Reply.create( text: text, tolerance_level: tolerance_level, stage: stage )
end
