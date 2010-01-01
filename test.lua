print("test.lua load.")

function luaTest()
    print("luaTest() called.")
    return '成功だ'
end

function luaCCall()
    print("luaCCall called.")
    local value1, value2 = callCFunction(1)
    print("value1: " .. value1 .. " value2: " .. value2)
end