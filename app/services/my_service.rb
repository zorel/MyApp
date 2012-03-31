require 'java'

class MyService
  def initialize
    
  end

  def test
    begin
      java.lang.Integer.parse_int("asdf")
    rescue java.lang.NumberFormatException => e
      puts "Failed to parse integer: #{e.message}"
    end
  end

  def test2
    return 42 / 0
  end
end
