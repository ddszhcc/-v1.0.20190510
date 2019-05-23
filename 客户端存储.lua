-- 函数：AddToStorage(TarObj)
-- 函数说明：将指定的对象存入ClientStorage
-- 参数1：string
-- 参数1说明：TarObj 指定的工作区对象
-- 代码说明：创建一个角色，然后将角色放到客户端存储
-- 代码示例：
local person = RWObject.Create("Avatar") --创建角色
wait(1) -- 等待1
ClientStorage:AddToStorage(person) -- 将角色存入ClientStorage
-- 备注：前提在客户端脚本上进行测试

