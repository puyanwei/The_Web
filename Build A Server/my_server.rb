require 'socket'

server = TCPServer.new(2345)

socket = server.accept

loop do

socket.puts "What do you say?"

@they_said = socket.gets.chomp
socket.puts "You said: #{@they_said}. Goodbye!"
break if @they_said == "quit"

end

socket.puts "You said: #{@they_said}. Goodbye!"

socket.close

=begin
def test
  loop do
    puts "hello"
    input = gets.chomp
    break if input == "bye"
  end
  end
  puts "Goodbye"
=end
