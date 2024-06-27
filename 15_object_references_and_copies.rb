def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# objects and copies")

a = [1, 2, 3]
b = a # b is reference to a
c = [1, 2, 3]

p a.object_id
p b.object_id
p c.object_id


sections("# dup/clone")

a = [1, 2, 3]
b = a.dup
c = a.clone # almost same as above

p a.object_id
p b.object_id
p c.object_id


sections("# freeze method - prevents object from being mutated")

name = "rahul".freeze
hobbies = ["Gaming", "Sleeping"].freeze

p name
p name.class
# p name << " dey" # will cause exception

p hobbies.class
# p hobbies << "Coding" # will cause exception

name_dup = name.dup # the new object is not fronzen
name_clone = name.clone # the copy is also frozen

p name_dup << " dey"
# p name_clone << " dey" # will cause exception
p name_clone
