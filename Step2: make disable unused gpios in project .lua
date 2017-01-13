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
--make all usable gpio s disabled
gpio.mode(0,gpio.OUTPUT)
gpio.write(0,gpio.LOW)  -- pin1 - GPIO 16 -- D0 is low now

gpio.mode(1,gpio.OUTPUT)
gpio.write(1,gpio.LOW)  -- pin2 - GPIO 5  -- D1 is low now

gpio.mode(2,gpio.OUTPUT)
gpio.write(2,gpio.LOW)  -- pin3 - GPIO 4  -- D2 is low now

gpio.mode(3,gpio.OUTPUT)
gpio.write(3,gpio.LOW)  -- pin4 - GPIO 0  -- D3 is low now

.
.
.
.
