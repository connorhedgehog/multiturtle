local port = 1337

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(port)

print("Started up! Waiting for signal...")

local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == port

-- the message is how many blocks the turtle should go
for i=1, message do
    turtle.refuel()
    turtle.dig()
    turtle.forward()
end
