require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
  it("returns array from 1 to the number") do
    expect((2).pingpong()).to(eq([1, 2]))
  end

  it("if divisible by 3 & 5, return PingPong") do
    expect((15).pingpong().at(14)).to(eq("PingPong"))
  end

  it("if divisible by 3, return Ping") do
    expect((3).pingpong().at(2)).to(eq("Ping"))
  end

  it("if divisible by 5, return Pong") do
    expect((5).pingpong().at(4)).to(eq("Pong"))
  end
end
