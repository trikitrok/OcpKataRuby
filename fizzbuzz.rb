class FizzBuzz
  def initialize sayers
    @sayers = sayers
  end

  def say number
    @sayers.reduce("") do |acc, sayer|
      sayer.say(number, acc)
    end
  end
end

class Translator
  def say number, acc
    return add(number, acc) if predicate(number, acc)
    acc
  end
end

class SameNumber < Translator
  def add number, acc
    number.to_s
  end

  def predicate number, acc
    acc == ""
  end
end

class Fizz < Translator
  def add number, acc
    acc + "Fizz"
  end

  def predicate number, acc
    number % 3 == 0
  end
end

class Buzz < Translator
  def add number, acc
    acc + "Buzz"
  end

  def predicate number, acc
    number % 5 == 0
  end
end

class Bang < Translator
  def add number, acc
    acc + "Bang"
  end

  def predicate number, acc
    number % 7 == 0
  end
end
