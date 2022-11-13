#!/usr/bin/ruby -w

# 整型分两种，如果在31位以内（四字节），那为Fixnum实例。如果超过，即为Bignum实例。
# 整数范围从 -2^30 到 2^30-1，在这个范围内的整数是类 Fixnum 的对象， 当整数值大于或等于2的30次方时
# （ -2^62 到 2&62-1），会自动转化为 Bignum 类型。
# 您可以在整数前使用一个可选的前导符号，一个可选的基础指标（0 对应 octal，0x 对应 hex，0b 对应 binary），
# 后跟一串数字。下划线字符在数字字符串中被忽略。
# 您可以获取一个 ASCII 字符或一个用问号标记的转义序列的整数值。

puts 123                  # Fixnum 十进制
puts 1_234                # Fixnum 带有下划线的十进制
puts -500                 # 负的 Fixnum
puts 0377                 # 八进制
puts 0xff                 # 十六进制
puts 0b1011               # 二进制
puts "a".ord              # "a" 的字符编码
puts "b".ord              # "b" 的字符编码
puts "ab".ord              # "aa" 的字符编码
puts ?\n                  # 换行符（0x0a）的编码
puts 12345678901234567890 # 大数

a1=0
puts a1

a2 = 1_000_000
a3 = 0xa
puts a2, a3

b1 = 123.4                # 浮点值
b2 = 1.0e6                # 科学记数法
b3 = 4E20                 # 不是必需的
b4 = 4e+20                # 指数前的符号
puts b1, b2, b3, b4


# ** 指数
puts 2**(1/4)#1与4的商为0，然后2的0次方为1
puts 16**(1/4.0)#1与4.0的商为0.25（四分之一），然后开四次方根

#!/usr/bin/ruby -w

puts 'escape using "\\"';
puts 'That\'s right';

# 您可以使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串。在这里，expr 可以是任意的 Ruby 表达式。
puts "相乘 : #{24*60*60}";

name = "ruby"
puts "#{name+" is the best"}"

# array

ary = [ "fred", 10, 3.14, "This is a string", "last element"]

ary.each do |i|
  puts i
end

# hash

hsh = {"red" => 0, "blue" => 1.1}
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

range1 = (10..15)
range1.each do |n|
  print n, " "
end
