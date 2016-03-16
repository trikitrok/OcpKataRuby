class FizzBuzz
  def initialize sayer
    @sayer = sayer
  end

  def say number
    @sayer.say(number, "")
  end
end

class SameNumber
  def say number, acc
    return number.to_s if acc == ""
    acc
  end
end

class Fizz
  def initialize sayer
    @sayer = sayer
  end

  def say number, acc
    acc += "Fizz" if number % 3 == 0
    @sayer.say(number, acc)
  end
end

class Buzz
  def initialize sayer
    @sayer = sayer
  end

  def say number, acc
    acc += "Buzz" if number % 5 == 0
    @sayer.say(number, acc)
  end
end

class Bang
  def initialize sayer
    @sayer = sayer
  end

  def say number, acc
    acc += "Bang" if number % 7 == 0
    @sayer.say(number, acc)
  end
end
