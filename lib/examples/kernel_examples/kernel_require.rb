#require -- idempotent
require '../a.rb'
puts A::MAX
require '../a.rb'
puts A::MAX

