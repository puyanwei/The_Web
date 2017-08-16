require 'socket'

socket = TCPSocket.new('localhost', 2345)

loop do

response = socket.gets
put socket.response

end

socket.close
