-- 函数：AddToStorage(TarObj)
-- 函数说明：将指定的对象存入ClientStorage
-- 参数1：string
-- 参数1说明：TarObj 指定的工作区对象
-- 代码说明：创建一个角色，然后将角色放到服务器存储
-- 代码示例：
local person = RWObject.Create("Avatar") -- 创建角色并获取
wait(1) -- 等待1
ServerStorage:AddToStorage(person) -- 将角色存放在服务器存储
-- 备注：前提在服务器脚本上进行测试