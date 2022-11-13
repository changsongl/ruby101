#!/usr/bin/ruby -w


#局部变量：局部变量是在方法中定义的变量。局部变量在方法外是不可用的。在后续的章节中，您将看到有关方法的更多细节。局部变量以小写字母或 _ 开始。
#
#实例变量：实例变量可以跨任何特定的实例或对象中的方法使用。这意味着，实例变量可以从对象到对象的改变。实例变量在变量名之前放置符号（@）。
# 类似private，通过get, set改变值。
#
#类变量：类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量在变量名之前放置符号（@@）。 类似static
#
#全局变量：类变量不能跨类使用。如果您想要有一个可以跨类使用的变量，您需要定义全局变量。全局变量总是以美元符号（$）开始。
class Customer
  @@no_of_customers=0
  def inc
    @@no_of_customers += 1
  end



  def initialize(id)
    @cust_id=id
  end

  def print
    puts @@no_of_customers
  end

  def private_func2
    puts @cust_id
  end

  def print_uid
    private_func2()
  end

  private :private_func2

  private
  def private_func
  end
end

c1 = Customer.new(1)
c1.inc()
c1.print()

c2 = Customer.new(2)
c2.inc()
c1.print()
c2.print()

c2.print_uid()

