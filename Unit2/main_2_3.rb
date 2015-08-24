#encoding: utf-8 #invalid multibyte char (UTF-8)
n = rand(0..3)

str =
    if n.zero?
      'ゼロです'
    elsif n.even?
      '偶数です'
    elsif n.odd?
      '奇数です'
    end

puts str