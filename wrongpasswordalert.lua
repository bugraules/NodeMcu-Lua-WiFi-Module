--start
wifi.setmode(wifi.STATION)
wifi.sta.config("SSID","password",false)
-- oto conn kapalı
wifi.sta.autoconnect(0)
-- 
wifi.sta.connect(false)
--
wifi.sta.eventMonReg(wifi.STA_WRONGPWD, function() print("STATION_WRONG_PASSWORD") end)
--ok
