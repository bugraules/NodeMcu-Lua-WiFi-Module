--start
wifi.setmode(wifi.STATION) --wifi mode is STATION
wifi.sta.config("SSID","password",false) -- oto connection closed

wifi.sta.autoconnect(0) --oto connection closed

wifi.sta.connect(false)
--
wifi.sta.eventMonReg(wifi.STA_WRONGPWD, function() print("STATION_WRONG_PASSWORD") end)
--done
