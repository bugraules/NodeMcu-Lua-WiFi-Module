--Syntax--gpio.mode(pin, mode [, pullup])
--http://nodemcu.readthedocs.io/en/master/en/modules/gpio/#gpiomode
gpio.mode(0, gpio.OUTPUT)-- configure 0 io s mode -- use the index number--So 0 means gpio16

--Syntax--gpio.read(pin)
gpio.read(0) --read gpio s status

--Syntax--gpio.write(pin, level)--gpio.write(pin, gpio.HIGH)--gpio.write(pin, gpio.LOW)
gpio.mode(0,gpio.OUTPUT)
gpio.write(0,gpio.LOW)-- pin0 s blueLED is on now
gpio.write(0,gpio.HIGH)--WOW seems pin 0 has an additional blue LED(Geekcreit Nodemcu) 
