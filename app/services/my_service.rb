
class MyService
  def initialize
    
  end

  def test
    begin
      java.lang.Integer.parse_int("asdf")
    rescue java.lang.NumberFormatException => e
      return "Failed to parse integer: #{e.message}"
    end
  end
end
