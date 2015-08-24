class Main21
  def hello(names)
    names.each do |name|
      puts "HELLO, #{name.upcase}"
    end
  end
end

rubies = %w(MRI jruby rubinius)

main_21 = Main21.new
main_21.hello(rubies)