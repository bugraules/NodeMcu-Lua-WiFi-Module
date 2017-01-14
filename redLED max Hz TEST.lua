gpio.mode(1, gpio.OUTPUT)

while true do
   gpio.write(1, gpio.HIGH)
   tmr.delay(10000)--1 second =1000000 u second
   gpio.write(1, gpio.LOW)
   tmr.delay(10000)
end

--Hz=1/s
--f=1/T
--If delay is 500000usec than T=2*500000usec and f=1Hz

--RED LED frequency TEST RESULT
--T=2*50000usec for 10 Hz ok
--T=2*25000usec for 20 Hz ok
--T=2*20000usec for 25 Hz ok
--T=2*15000usec for 33 Hz ok
--T=2*10000usec for 50 Hz ok
--T=2*7500 usec for 75 Hz ok
