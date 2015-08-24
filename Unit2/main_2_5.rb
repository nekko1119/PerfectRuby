class Ruler
  @@my_class_val = 'my_class_val' # クラス変数は直接アクセスできない

  attr_accessor :length # これで以下のアクセサーメソッドが暗黙に定義される

  # def length
  #   @length
  # end
  #
  # def length=(val)
  #   @length = val
  # end

  def self.my_class_val
    @@my_class_val
  end

  def self.pair
    [Ruler.new(0), new(0)] # クラスメソッド内ではレシーバ省略可能
  end

  def initialize(length)
    @length = length
  end

  def twice_length
    length * 2
  end

  def set_twice_length
    self.length = length + length # selfが無いとローカル変数lengthが定義される
    @length = self.length * 2 # selfを付けるかもしくはフィールドであること明示する
  end
end

ruler = Ruler.new(5)
puts ruler.length
ruler.length = 30
puts ruler.twice_length
ruler.set_twice_length
puts ruler.length

puts ruler

pair = Ruler.pair
pair.each do |r|
  puts r.length
end

puts Ruler.my_class_val

class Parent
  def hello
    puts 'hello'
  end

  def greet
    puts 'good morning'
  end
end

class Child < Parent
  def hi
    hello
    puts 'hi'
  end

  def hello
    super
    puts 'hello!!'
  end

  def greet
    puts 'good afternoon'
  end
end

child = Child.new
child.hi
child.greet
puts Child.superclass # Parent
puts Ruler.superclass # Object