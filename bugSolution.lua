local function foo(x)
  if x == nil then
    error("x is nil in function foo()")
  elseif type(x) ~= "number" then
    error("x is not a number in function foo(), got type: " .. type(x))
  end
  return x + 1
end

local result
local x = nil

pcall(function()
  result = foo(x)
  print("Result:", result)
end, function (err)
  print("Error:", err)
end)

x = 10
pcall(function()
  result = foo(x)
  print("Result:", result)
end, function (err)
  print("Error:", err)
end)

x = "hello"
pcall(function()
  result = foo(x)
  print("Result:", result)
end, function (err)
  print("Error:", err)
end)