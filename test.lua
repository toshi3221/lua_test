print("test.lua load.")

function luaTest()
    print("luaTest() called.")
    return '変わりますね。'
end

function luaCCall()
    print("luaCCall called.")
    value = callCfunction(1)
    print("value: " .. value)
end