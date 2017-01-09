--start
wifi.setmode(wifi.STATION) --wifi mode is STATION
wifi.sta.config("SSID","password",false) -- oto connection closed

wifi.sta.autoconnect(0) --oto connection closed

wifi.sta.connect(false) --oto connection closed

wifi.sta.eventMonReg(wifi.STA_WRONGPWD, function() print("STATION_WRONG_PASSWORD") end)

ip = wifi.sta.getip() -- assing exist If IP exists to "ip"
print(ip) --print "ip"
--done


