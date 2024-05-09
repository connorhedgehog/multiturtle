local port = 1337

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(port)

print("Started up! Waiting for signal...")

local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == port

turtle.select(1)
turtle.refuel()
turtle.select(2)

-- the message is how many blocks the turtle should go
for i=1, message do
  -- if there's no blocks in this slot, check the rest!
  if turtle.getItemCount() == 0 then
    for j=turtle.getSelectedSlot(),16 do
      -- prevent checking for a slot 17 and just error ourselves
      if turtle.getSelectedSlot()+1 == 17 then
        error("No items left")
      end
      -- again, if there's no blocks in this slot, check the rest!
      if turtle.getItemCount() == 0 then
          print(j)
          turtle.select(turtle.getSelectedSlot()+1)
      end
    end
  end
  -- forward first so you can place the turtle and not have to break the blocks underneath it
  turtle.forward()
  turtle.placeDown()
end