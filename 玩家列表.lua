<<<<<有问题>>>>>
-- 函数：AddPlayer(player)
-- 函数说明：将目标玩家加入玩家列表
-- 参数1：rwobject 
-- 参数1说明：目标玩家对象
-- 代码说明：创建一个Avatar将其添加到玩家列表中
-- 代码示例：
local person = RWObject.Create("Avatar") -- 创建角色
Players.AddPlayer(person) -- 玩家添加角色
-- 备注：玩家列表添加不上

<<<<<有问题>>>>>
-- 函数：RemovePlayer(player)
-- 函数说明：将目标玩家移出玩家列表
-- 参数1：rwobject 
-- 参数1说明：目标玩家对象
-- 代码说明：创建一个Avatar将其移除玩家列表
-- 代码示例：
wait(2) --等待2
local person = WorkSpace["123"] -- 获取工作区下的角色123
local players = Players:GetPlayerByUserId(person.PlayerId) -- 根据角色的PlayerId获取玩家
wait(2) -- 等待2
players:RemoveAvatar() -- 玩家移除角色
-- 备注：玩家列表删除不了

-- 函数：GetPlayerByUserId(PlayerId）
-- 函数说明：根据给定的PlayerId获取玩家对象
-- 参数1：int 
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 返回值：rwobject
-- 返回值说明：Player玩家对象
-- 代码说明：利用角色的playerId并获取到角色对象
-- 代码示例：
wait(1) -- 等待1
local player = WorkSpace["123"] -- 获取工作区下的角色123
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据角色的PlayerId获取玩家
print(tostring(person.Name)) -- 输出角色的名字

-- 函数：GetAllPlayers()
-- 函数说明：获取自身列表中所有的玩家对象
-- 返回值：table
-- 返回值说明：{Player玩家对象}
-- 代码说明：获取自身列表中所有的玩家对象
-- 代码示例：
wait(2) -- 等待2
local tb= Players:GetAllPlayer() -- 获取所有的玩家
wait(1) -- 等待1
for k,v in pairs(tb) do -- 输出所有的玩家名字
	print(tostring(v.Name))
end

-- 函数：GetLocalPlayers()
-- 函数说明：获取本地的玩家对象
-- 返回值：rwobject
-- 返回值说明：客户端的Player玩家对象
-- 代码说明：获取本地的玩家对象
-- 代码示例：
wait(2) -- 等待2
local obj= Players:GetLocalPlayer() -- 获取本地玩家
wait(1) -- 等待1
print(obj.Name) -- 输出玩家名字
-- 备注：前提在客户端脚本编写

-- 事件：PlayerDead(Playerid)
-- 事件说明：列表中的玩家死亡时，触发此事件
-- 参数1：int
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 代码说明：获取到Avatar并将其状态更改为死亡状态，观察是否触发死亡事件
-- 代码示例：
wait(2) -- 等待2
local player = WorkSpace["123"] -- 获取工作区下的角色123
Players.PlayerDead:Connect(function(id) -- 列表中的玩家死亡事件注册
	print("角色死亡时间触发:")
	print("角色的id为:"..id)
end)
wait(1) -- 等待1
player.Health = 0 -- 玩家的生命赋值为0

-- 事件：PlayerAdded(Playerid)
-- 事件说明：加入玩家时，触发此事件
-- 参数1：int
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 代码说明：在一开始利用引擎自动加载人物观察其是否触发事件
-- 代码示例：
Players.PlayerAdded:Connect(function(id)  --加入玩家事件注册
	print("添加角色进入列表事件触发:")
	print("角色的id为:"..id)
end)

<<<<<有问题>>>>>
-- 事件：PlayerLeave(Playerid)
-- 事件说明：玩家离开列表时，触发此事件
-- 参数1：int
-- 参数1说明：PlayerId 玩家角色的唯一ID
-- 代码说明：在玩家列表中移除角色，观察是否触发此事件
-- 代码示例：
wait(2) -- 等待
local player = WorkSpace["123"] -- 获取工作区下的角色123
--local person = RWObject.Create("Avatar") 
Players.PlayerLeave:Connect(function(id) -- 玩家离开列表事件注册
	print("添加角色离开列表事件触发:")
	print("角色的id为:"..id)
end)
wait(1) -- 等待1
Players:RemovePlayer(player) -- 玩家列表移除玩家
-- 备注：玩家列表删除不了,事件也触发不了