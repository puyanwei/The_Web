require 'socket'


server = TCPServer.new(2345)

loop do

socket = server.accept

socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "#{name}"

end

socket.close
