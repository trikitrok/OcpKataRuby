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

class GivenNumber
  def initialize number
    @number = number
  end

  def true? num
    num == @number
  end
end

class MultipleOf
  def initialize divisor
    @divisor = divisor
  end

  def true? number
    number % @divisor == 0
  end
end

class Translation
  def initialize word, predicate, sayer
    @sayer = sayer
    @word = word
    @predicate = predicate
  end

  def say number, acc
    acc += @word if @predicate.true?(number)
    @sayer.say(number, acc)
  end
end