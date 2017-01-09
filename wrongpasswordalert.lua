--start
wifi.setmode(wifi.STATION)
wifi.sta.config("osb_8",
"s5a4r3a2y1",false)
-- oto conn kapalı
wifi.sta.autoconnect(0)
-- 
wifi.sta.connect(false)
--
wifi.sta.eventMonReg(wifi.STA_WRONGPWD, function() print("STATION_WRONG_PASSWORD") end)
--ok