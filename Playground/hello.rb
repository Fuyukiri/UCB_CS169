# frozen_string_literal: true

class Hello
  # constructor
  def initialize(foo = 0)
    @balance = foo
  end

  # getter
  def balance
    @balance
  end

  # setter
  def balance=(new_amount)
    @balance = new_amount
  end

  def deposit(amount)
    @balance += amount
  end

  # define static method getter to access static field
  def self.get_val
    @@testval
  end

  def test
    @@testval += 115
  end

  # static field which can't be accessed outside the class unless using getter
  @@testval = 114
end

x = Hello.new(29)
x.test
print("#{x.balance}\n")
x.balance = 114
x.deposit(15)
print("#{x.balance}\n")