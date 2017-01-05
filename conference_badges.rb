def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badge_messages = []
  names.each {|name| badge_messages << badge_maker(name)}
  badge_messages
end

def assign_rooms(speakers)
  speakers.each_with_index {|name, index| speakers[index] = "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  speakers
end

def printer(guests)
  batch_badge_creator(guests).each {|person| puts person}
  assign_rooms(guests).each {|person_and_room| puts person_and_room}
end
