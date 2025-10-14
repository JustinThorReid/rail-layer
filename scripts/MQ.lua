---@class Message
---@field private SymbolQueue string[]
---@field public new fun(self: Message): Message
---@field public add fun(self: Message, msg: Message|string): Message
---@field public __tostring fun(self: Message): string
---@field public __len fun(self: Message): number

local Message = {}
Message.__index = Message

local SymbolQueue={}


function Message:new()
  return setmetatable({[SymbolQueue]={}}, self)
end

---@param msg Message|string
---@return Message
function Message:add(msg)
  if not msg then return self end
  if msg[SymbolQueue] then
    for _, m in ipairs(msg[SymbolQueue]) do
      self:add(m)
    end
    return self
  end
  table.insert(self[SymbolQueue], msg)
  return self
end

---@return string
function Message:__tostring()
  return table.concat(self[SymbolQueue], "\n")
end

---@return number
function Message:__len()
  return #self[SymbolQueue]
end

return Message