# ruby encoding: utf-8

messages = [
  [ "Hello", 1 ],
  [ "France", 1 ],
  [ "Belgium", 2 ],
  [ "Netherlands", 3 ]
]

messages.each do |text, boring_level|
  Message.create( text: text, boring_level: boring_level )
end

replies = [
  [ "Hello", 1 ],
  [ "France", 1 ],
  [ "Belgium", 2 ],
  [ "Netherlands", 3 ]
]

replies.each do |text, tolerance_level|
  Reply.create( text: text, tolerance_level: tolerance_level )
end
