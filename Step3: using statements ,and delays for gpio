--https://www.lua.org/pil/4.3.2.html
--Syntax--
local i = 1
    while a[i] do
      print(a[i])
      i = i + 1
    end
    
--Lets try it using our D0-pin0-GPIO16 with.
--infinite loop

gpio.mode(0, gpio.OUTPUT)

while true do
   gpio.write(0, gpio.HIGH)
   tmr.delay(1000000)--1 second =1000000 u second
   gpio.write(0, gpio.LOW)
   tmr.delay(1000000)
end

