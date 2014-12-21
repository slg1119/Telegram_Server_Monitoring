function on_msg_receive (msg)
   if ( msg.text == 'stats' ) then
      local t = os.execute("sh ~/server/stats.sh > ~/server/stats.txt")
      send_text(msg.from.print_name, '~/server/stats.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'ping' ) then
      local t = os.execute("sh ~/server/ping.sh > ~/server/ping.txt")
      send_text(msg.from.print_name, '~/server/ping.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'who' ) then
      local t = os.execute("sh /home/slg1119/server/who.sh > /home/slg1119/server/who.txt")
      send_text(msg.from.print_name, '/home/slg1119/server/who.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'process' ) then
      local t = os.execute("sh /home/slg1119/server/process.sh > /home/slg1119/server/process.txt")
      send_text(msg.from.print_name, '/home/slg1119/server/process.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'weather' ) then
      local t = os.execute("sh /home/slg1119/server/weather.py > /home/slg1119/server/weather.txt")
      send_text(msg.from.print_name, '/home/slg1119/server/weather.txt', ok_cb, false)
      return
   end


end
function ok_cb(extra, success, result)
end
