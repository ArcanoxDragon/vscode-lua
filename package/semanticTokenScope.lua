return {
    -- Lua库函数，如 print | Lua library functions, such as print
    ["function.defaultLibrary"] = {"support.function.lua"},
    -- Lua库常量，如 _G | Lua library constants, such as _G
    ["variable.defaultLibrary"] = {"variable.language.lua"},
    -- 全局函数 | Global function
    ['function.static'] = {"entity.name.function.lua"},
    -- 全局变量 | Global variable
    ["variable.static"] = {"variable.other.lua"},
    -- 参数声明 | Parameter declaration
    ['parameter.declaration'] = {"variable.parameter.lua"},
    -- table的field声明 | Table field statement
    ['property.declaration'] = {"entity.other.property.lua"},
    -- 局部函数 | Local function
    ['function'] = {"variable.function.lua"},
    -- 局部变量 | Local variable
    ['variable.local'] = {"variable.other.lua"},
    -- table的field声明 | Table field access
    ['property'] = {"variable.other.property.lua"},
    -- const 变量 | Const variable
    ['variable.readonly'] = {'variable.other.constant.lua'},
    -- close 变量 | Close variable
    ['variable.abstract'] = {'variable.other.constant.lua'},
    -- 自定义函数声明 | Custom function declaration
    ['function.declaration'] = {"entity.name.function.lua"},

    ['function.readonly'] = {"variable.other.flagme.lua"}, -- TODO
}
