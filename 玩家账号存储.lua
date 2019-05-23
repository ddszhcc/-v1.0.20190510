-- 函数：GetValue(PlayerId,key)
-- 函数说明：根据给定的Key和PlayerId获取KeyValue
-- 参数1：int 
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 参数2：string
-- 参数2说明：key 自定义值
-- 返回值：value
-- 返回值说明：存入的数值，可以是任何类型
-- 代码说明：先存入一个数值“keykey”,然后打印"keykey"的value值,观察存入值的value是否与设置的相对应
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来获取角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 通过角色的PlayerId来获取玩家
PlayerStoreData:SetValue(avatar.PlayerId,"keykey","~~~") -- 根据玩家PlayerId把玩家的keykey数值"~~~"存储起来
wait(2) -- 等待2
local value = PlayerStoreData:GetValue(avatar.PlayerId,"keykey") -- 根据PlayerId来获取玩家的keykeu数值
print(tostring(value)) -- 输出获取到的数值

-- 函数：SetValue(PlayerId,key,value)
-- 函数说明：存储给定PlayerId玩家的数据，数据以Key-KeyValue的形式存储
-- 参数1：int 
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 参数2：string
-- 参数2说明：key 自定义值
-- 参数3：string
-- 参数3说明：keyvalue
-- 返回值：value
-- 返回值说明：存入的数值，可以是任何类型
-- 代码说明：先存入一个数值“keykey”,然后打印"keykey"的value值,观察存入值的value是否与设置的相对应
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来获取角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 通过角色的PlayerId来获取玩家
PlayerStoreData:SetValue(avatar.PlayerId,"keykey","~~~") -- 根据玩家PlayerId把玩家的keykey数值"~~~"存储起来
wait(2) -- 等待2
local value = PlayerStoreData:GetValue(avatar.PlayerId,"keykey") -- 根据PlayerId来获取玩家的keykeu数值
print(tostring(value)) -- 输出获取到的数值

-- 函数：RemoveValue(PlayerId,key)
-- 函数说明：根据给定的Key和PlayerId删除KeyValue
-- 参数1：int 
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 参数2：string
-- 参数2说明：key 自定义值
-- 返回值：value
-- 返回值说明：存入的数值，可以是任何类型
-- 代码说明：先存入一个数值“keykey”,然后删除“keykey"的value值,然后打印"keykey"的value值,观察"keykey"值的value是否被删除
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来获取角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 通过角色的PlayerId来获取玩家
PlayerStoreData:SetValue(avatar.PlayerId,"keykey","~~~") -- 根据PlayerId来获取玩家的keykeu数值"~~~"存储起来
wait(2) -- 等待2
PlayerStoreData:RemoveValue(avatar.PlayerId,"keykey") -- 根据PlayerId来删除玩家的keykeu数值
wait(2) -- 等待2
local value = PlayerStoreData:GetValue(avatar.PlayerId,"keykey") -- 根据PlayerId来获取玩家的keykeu数值
print(tostring(value)) -- 输出获取到的数值


