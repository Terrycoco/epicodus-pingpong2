#require('pry')

class Fixnum
  define_method(:pingpong) do
    results_array = []
    self.times() do |time|
      if ( (time+1).%(15).eql?(0))
        results_array.push("PingPong")
      elsif ((time+1).%(3).eql?(0))
        results_array.push("Ping")
      elsif ((time+1).%(5).eql?(0))
        results_array.push("Pong")
      else
        results_array.push(time+1)
      end
    end

    return results_array
  end
end
