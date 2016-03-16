require_relative '../fizzbuzz'

describe "FizzBuzz" do
  it "says same number" do
    expect(sayer.say(1)).to eq("1")
    expect(sayer.say(2)).to eq("2")
  end

  it "says Fizz given a multiple of 3" do
    expect(sayer.say(3)).to eq("Fizz")
    expect(sayer.say(6)).to eq("Fizz")
  end

  it "says Buzz given a multiple of 5" do
    expect(sayer.say(5)).to eq("Buzz")
    expect(sayer.say(10)).to eq("Buzz")
  end

  it "says FizzBuzz given a multiple of 3*5" do
    expect(sayer.say(15)).to eq("FizzBuzz")
    expect(sayer.say(30)).to eq("FizzBuzz")
  end

  it "says Bang given a multiple of 7" do
    expect(sayer.say(7)).to eq("Bang")
    expect(sayer.say(14)).to eq("Bang")
  end

  it "says FizzBang given a multiple of 3*7" do
    expect(sayer.say(3*7)).to eq("FizzBang")
    expect(sayer.say(3*7*2)).to eq("FizzBang")
  end

  it "says BuzzBang given a multiple of 5*7" do
    expect(sayer.say(5*7)).to eq("BuzzBang")
    expect(sayer.say(5*7*2)).to eq("BuzzBang")
  end

  it "says FizzBuzzBang given a multiple of 3*5*7" do
    expect(sayer.say(3*5*7)).to eq("FizzBuzzBang")
    expect(sayer.say(3*5*7*2)).to eq("FizzBuzzBang")
  end

  def sayer
    FizzBuzz.new([
                   Fizz.new,
                   Buzz.new,
                   Bang.new,
                   SameNumber.new
    ])
  end
end
