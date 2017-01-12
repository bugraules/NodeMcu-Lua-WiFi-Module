--http://nodemcu.readthedocs.io/en/master/en/modules/gpio/#gpiomode

--Syntax--
--gpio.mode(pin, mode [, pullup])
gpio.mode(0, gpio.OUTPUT)-- configure 0 io s mode -- use the index number--So 0 means gpio16

--Syntax--gpio.read(pin)
gpio.read(0) --read gpio s status

--Syntax--
--gpio.write(pin, level)--gpio.write(pin, gpio.HIGH)--gpio.write(pin, gpio.LOW)
gpio.mode(0,gpio.OUTPUT)
gpio.write(0,gpio.LOW)-- pin0 s blueLED is on now
gpio.write(0,gpio.HIGH)--WOW seems pin 0 has an additional blue LED(Geekcreit Nodemcu) 

--Syntax--
--https://nodemcu.readthedocs.io/en/master/en/modules/gpio/
--gpio.serout(pin, start_level, delay_times [, cycle_num[, callback]])
gpio.mode(1,gpio.OUTPUT,gpio.PULLUP)
gpio.serout(1,1,{30,30,60,60,30,30})  -- serial one byte, b10110010
gpio.serout(1,1,{30,70},8)  -- serial 30% pwm 10k, lasts 8 cycles
gpio.serout(1,1,{3,7},8)  -- serial 30% pwm 100k, lasts 8 cycles
gpio.serout(1,1,{0,0},8)  -- serial 50% pwm as fast as possible, lasts 8 cycles
gpio.serout(1,0,{20,10,10,20,10,10,10,100}) -- sim uart one byte 0x5A at about 100kbps
gpio.serout(1,1,{8,18},8) -- serial 30% pwm 38k, lasts 8 cycles

--logic ERROR part
gpio.serout(1,1,{5000,995000},100, function() print("done") end) -- asynchronous 100 flashes 5 ms long every second with a callback function when done
gpio.serout(1,1,{5000,995000},100, 1) -- asynchronous 100 flashes 5 ms long, no callback // nodemcu

--NOTE:Nodemcu(geekcreit) can not do 100 flashes 5ms long in every second! So It restars itself! nMCU can max 2 flashes (5ms) in a sec. 


--Synttax--
