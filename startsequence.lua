local port = 1337

local pcs = { peripheral.find("turtle") }
local modem = peripheral.find("modem") or error("No modem attached", 0)

-- if the modems are wired, turn on all of the turtles!
if not modem.isWireless() then
    for _, pc in pairs(pcs) do
        -- make sure they're all off first to be consistent
        pc.shutdown()
        pc.turnOn()
    end
end

-- use a read to pause until user input
-- and use this read to let the user set the distance
print("How many blocks should they go?")
write("# ")
local distance = read()

modem.transmit(port, port, distance)