
local function run(msg, matches)
 local text = matches[2]
   if not is_admin(msg) then
     return "فقط سودو"
   end
 if matches[1] == "addplugin" then
  return text
 else
  local file = io.open("./plugins/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return "پلاگین با موفقیت ثبت شد."
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^[!/]addplugin ([^%s]+) (.*)$",
 },
 run = run
}
