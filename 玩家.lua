-- 函数：Jump()
-- 函数说明：使角色进行一次跳跃
-- 代码说明：创建一个角色使角色能够跳跃一次
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
player:Jump() -- 角色跳跃

-- 函数：ClearAvatarAppearance()
-- 函数说明：移除玩家操作的角色上所有的角色配件
-- 代码说明：创建一个配件和一个角色，使角色装备配件，2秒后移除角色身上所有的配件
-- 代码示例：
local Accessoryobj = RWObject.Create("Accessory") -- 创建角色配件
local Person = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
Person:AddAccessory(Accessoryobj) -- 角色添加角色配件
wait(2) -- 等待2
Person:RemoveAccessories() -- 角色移除角色配件

-- 函数：DistanceFromAvatar(point)
-- 函数说明：计算点到玩家操作的角色的距离
-- 参数：Vector3 
-- 参数说明：point 要测量间隔的目标点
-- 返回值：vector3
-- 返回值说明：目标点到角色的距离
-- 代码说明：默认角色123与创建的角色Avatar，分别打印两个的坐标位置，在使用该函数传入创建角色Avatar的坐标，观察两者的距离
-- 代码示例：
wait(2) -- 等待2
local person = WorkSpace["123"] -- 获取工作区下的角色123
local test = RWObject.Create("Avatar") -- 创建角色
test.Position = Vector3(0,0.125,5) -- 角色的位置赋值
local player = Players:GetPlayerByUserId(person.PlayerId) -- 根据角色playerid获取玩家
local distance = player:DistanceFromAvatar(test.Position) -- 获取角色到新建角色的距离
print("角色123的坐标为:"..tostring(person.Position))
print("角色Avatar的坐标为:"..tostring(test.Position))
print("the distance is " .. distance)

-- 函数：RemoveAvatar()
-- 函数说明：删除角色
-- 代码说明：利用角色123的PlayerId获取player，然后调用函数观察角色是否被删除
-- 代码示例：
wait(2) --等待2
local person = WorkSpace["123"] -- 获取工作区下的角色123
local player = Players:GetPlayerByUserId(person.PlayerId) -- 根据角色playerid获取玩家
wait(2) --等待2
player:RemoveAvatar() -- 玩家删除角色

<<<<<有问题>>>>>
-- 函数：LeaveTeam()
-- 函数说明：离开当前队伍
-- 代码说明：利用角色123的PlayerId获取player,将player添加到指定的队伍中，在离开队伍，观察数组中是否离开队伍
-- 代码示例：
wait(2) --等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来找角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 根绝角色PlayerId来获取玩家
local teams = Team:GetTeams() -- 获取所有的队伍
local team1 = Team:GetTeamForId(1) -- 获取id为1的队伍
player:JionTeam(1) -- 玩家加入队伍1
player:LoadCharacter() -- 玩家重新加载形象
dump(teams[1].Players) -- 输出队伍1的玩家
player:LeaveTeam() -- 玩家离开队伍
player:LoadCharacter() -- 玩家冲洗加载形象
dump(teams[1].Players) -- 输出队伍1的玩家
-- 备注：拼写错误与策划文档不兼容

-- 函数：JoinTeam(TeamId)
-- 函数说明：加入指定的队伍
-- 参数：int 
-- 参数说明：TeamId
-- 代码说明：利用角色123的PlayerId获取player,将player添加到指定的队伍中，观察数组中的是否有对象加入
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来找角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 根绝角色PlayerId来获取玩家
local teams = Team:GetTeams() -- 获取所有的队伍
local team1 = Team:GetTeamForId(1) -- 获取id为1的队伍
player:JionTeam(1) -- 玩家加入队伍1
player:LoadCharacter() -- 玩家重新加载形象
dump(teams[1].Players) -- 输出队伍1的玩家

<<<<<有问题>>>>>
-- 函数：LoadCharacter(TarObject)
-- 函数说明：在出生点加载角色，如果没有出生点，则将角色加载至（0,0,0）点
-- 代码说明：获取到玩家列表中的Avatar，并创建一个零件，将脚本挂在零件下,利用碰撞零件调用Avatar重新加载方法，观察是否重新加载并将角色加载至(0,0,0)坐标
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 通过类名来找角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 根绝角色PlayerId来获取玩家
script.Parent.CollisionEnter:Connect(function(res) -- 在出生点加载角色
	if res:IsClass("Avatar"	) then
		player:LoadCharacter()
		print("====================================")
	end
end)
-- 备注：调用函数无作用

<<<<<有问题>>>>>
-- 事件：ControlTypeChanged(Playerid)
-- 事件说明：当用户输入类型改变时，触发此事件
-- 参数：int
-- 参数说明： PlayerId 玩家角色的唯一ID
-- 代码说明：获取本地角色Avarar，切换第一人称视角，观察是否触发输入类型改变事件
-- 代码示例：
wait(1) --等待1
local player = Players:GetLocalPlayer() -- 获取本地玩家
wait(1) -- 等待1
player.ControlTypeChanged:Connect(function() --当用户输入类型改变事件注册
	print("输入类型发生改变")
end)
-- 前提是在客户端脚本，调用事件会触发两次

-- 事件：AvatarAdded(rwobject)
-- 事件说明：角色被加载时，触发此事件
-- 参数：rwobject
-- 参数说明：被添加的对象
-- 代码说明：获取到玩家列表中的角色并将角色的状态设置为死亡状态，观察是否触发加载角色事件
-- 代码示例：
wait(2) -- 等待2
local person = WorkSpace["123"] -- 获取工作区下的角色123
local player = Players:GetPlayerByUserId(person.PlayerId) -- 根据角色的PlayerId获取玩家
player.AvatarAdded:Connect(function()  -- 角色被加载事件注册
	print("触发加载角色事件")
end)
wait(2) -- 等待2
person.Health = 0 --角色生命设置为0

-- 事件：AvatarRemoving(Playerid)
-- 事件说明：玩家离开列表时，触发此事件
-- 参数：int
-- 参数说明： PlayerId 玩家角色的唯一ID
-- 代码说明：利用角色123的PlayerId获取player,然后在删除角色，观察是否触发角色离开列表事件
-- 代码示例：
wait(2) -- 等待2
local person = WorkSpace["123"] -- 获取工作区下的角色123
local player = Players:GetPlayerByUserId(person.PlayerId) -- 根据角色的PlayerId获取玩家
player.AvatarRemoving:Connect(function() --玩家离开列表事件触发
	print("添加角色离开列表事件触发:")
end)
wait(1) -- 等待1
player:RemoveAvatar() -- 玩家移除角色
