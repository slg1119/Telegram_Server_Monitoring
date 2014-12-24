ping_cmd = "sh /home/Username/server/ping.sh"
cmd_cmd = "sh /home/Username/server/cmd.sh"
function split(str)
        local arg_1st=""
        local arg_2nd=""
        local arg_cnt=1

        for s in string.gmatch(str, "[^%s]+") do
                if ( arg_cnt == 1 ) then
                        arg_1st = s
                else
                        arg_2nd = arg_2nd .." ".. s
                end
                arg_cnt = arg_cnt + 1
        end
        return arg_1st, arg_2nd
end

function on_msg_receive (msg)
    local recv_msg = ""
    if ( msg.text ~= nil ) then
        recv_msg  = string.gsub(msg.text,"[;|<>]","")   -- 받은 msg중에 ;, |, <, > 등의 문자는 지움
    end
        local cmd, arg  = split(recv_msg)                       -- exam : ping a b c d => cmd = "ping", arg = "a b c d"
        local file_name = ""
        cmd = string.lower(cmd)

   if ( msg.text == 'stats' ) then
      local t = os.execute("sh /home/Username/server/stats.sh > /home/Username/server/stats.txt")
      send_text(msg.from.print_name, '/home/Username/server/stats.txt', ok_cb, false)
      return
   end
    if ( msg.text == 'ping' ) then
      local t = os.execute(ping_cmd .. arg)
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
    if ( cmd == "cmd" ) then
      local t = os.execute(cmd_cmd .. arg)
      send_text(msg.from.print_name, '/home/Username/server/cmd.txt', ok_cb, false)
      return
   end

end
function ok_cb(extra, success, result)
end
