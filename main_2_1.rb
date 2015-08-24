#encoding: utf-8
class Main21
  def hello(names)
    names.each do |name|
      puts "こんにちは, #{name.upcase}"
    end
  end
end

rubies = %w(MRI jruby rubinius)

main_21 = Main21.new
main_21.hello(rubies)