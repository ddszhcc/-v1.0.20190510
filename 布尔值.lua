-- 事件：ValueChanged()
-- 事件说明：Bool值改变时，触发此事件
-- 代码说明：
-- 代码示例：
local boolVale = RWObject.Create("BoolValue") -- 创建BoolValue
boolVale.ValueChanged :Connect(function() -- BoolValue注册Bool值改变的事件
 print("boolVale的值改变了")
end)
boolVale.Value = false -- 改变BoolValue的值