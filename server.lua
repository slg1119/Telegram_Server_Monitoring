function on_msg_receive (msg)
   if ( msg.text == 'stats' ) then
      local t = os.execute("sh /home/Username/server/stats.sh > /home/Username/server/stats.txt")
      send_text(msg.from.print_name, '/home/Username/server/stats.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'ping' ) then
      local t = os.execute("sh /home/Username/server/ping.sh > /home/Username/server/ping.txt")
      send_text(msg.from.print_name, '/home/Username/server/ping.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'who' ) then
      local t = os.execute("sh /home/Username/server/who.sh > /home/Username/server/who.txt")
      send_text(msg.from.print_name, '/home/Username/server/who.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'process' ) then
      local t = os.execute("sh /home/Username/server/process.sh > /home/Username/server/process.txt")
      send_text(msg.from.print_name, '/home/Username/server/process.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'help' ) then
       send_text(msg.from.print_name, '/home/Username/server/help.txt', ok_cb, false)
      return
   end

end
function ok_cb(extra, success, result)
end
