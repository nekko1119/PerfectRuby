local ='foo'
$global = 'bar'
CONSTANT_VALUE = 'hoge'

def display
  #puts local # `display': undefined local variable or method `local' for main:Object (NameError)
  puts $global
  puts $undefined
  puts CONSTANT_VALUE
end

#CONSTANT_VALUE = 'piyo' # warning: aloread initialized constant CONSTANT_VALUE

puts local
display