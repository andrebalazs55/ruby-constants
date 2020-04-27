# Each entry in Module.nesting
# Each entry in Module.nesting.first.ancestors
# Each entry in Object.ancestors if Module.nesting.first is nil or a module.
#
# Module.nesting return the nesting at the point of the call --> https://apidock.com/ruby/Module/nesting/class

C = "At the top level"

module A
  C = "In A"
end

module A
  module B
    puts Module.nesting # => [A::B, A]
    puts C              # => "In A"
  end
end

module A::B
  puts Module.nesting # => [A::B]
  puts C              # => "At the top level"
end

