require 'em-websocket'

EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8880, :debug => true) do |ws|
  ws.onopen    { }
  ws.onmessage { |msg| ws.send rand(1000).to_s}
  ws.onclose   { puts "WebSocket closed" }
  ws.onerror   { |e| puts "Error: #{e.message}" }
end
