-- 函数：GetLandMaterial()
-- 函数说明：获取角色脚下站立位置的材质名称
-- 代码说明：
-- 代码示例：
local avatar = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
local materialType,materialName = avatar:GetLandMaterial() -- 获取角色脚下站立位置的材质
print("materialType=="..tostring(materialType).."  materialName=="..tostring(materialName)) -- 输出材质信息
-- 函数：GetMoveDirection()
-- 函数说明：获取角色当前的移动方向
-- 代码说明：
-- 代码示例：
local avatar = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
avatar.Rotation = Vector3(1,90,6) -- 角色的位置赋值
local Direction = avatar:GetMoveDirection() -- 获取当前角色的方向
print("角色当前移动方向>>>>>"..tostring(Direction)) -- 输出方向值

-- 函数：Sit(seatObj)
-- 函数说明：使角色进入乘坐状态，并且与指定的座位/驾驶位固定
-- 代码说明：创建一个座位对象，还有一个角色对象,使角色对象进入乘坐状态，并且和座位固定/驾驶位固定
-- 代码示例：
local seat = RWObject.Create("Seat") -- 创建座位
local Person = RWObject.Create("Avatar") -- 穿件角色
wait(1) -- 等待1
Person:Sit(seat) -- 角色坐在座位

-- 函数：Jump()(seatObj)
-- 函数说明：使角色进行一次跳跃
-- 参数：string 
-- 参数说明：角色对象
-- 代码说明：创建一个角色对象,使角色对象进行一次跳跃
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
Person:Jump() -- 角色跳跃

-- 函数：AddAccessory(Accessoryobj)
-- 函数说明：使角色佩戴指定的角色配件
-- 参数：rwobject 
-- 参数说明：角色配件对象
-- 代码说明：创建一个角色对象，和一个角色配件，使角色佩戴指定角色配件
-- 代码示例：
local Accessoryobj = RWObject.Create("Accessory") -- 创建角色配件
local Person = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
Person:AddAccessory(Accessoryobj) -- 角色佩戴角色配件

-- 函数：EquipTool(toolobj)
-- 函数说明：使角色装备指定的工具对象
-- 参数：rwobject 
-- 参数说明：工具对象
-- 代码说明：创建一个工具，使角色能够自动装备工具
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色 
--local Person = RWObject.Create("Avatar")  >>如果用这个角色就不可以自动装备工具
local toolcrt = RWObject.Create("Tool") -- 创建工具
Person:EquipTool(toolcrt) -- 角色装备工具
-- 备注：可以移动操作的123角色对象可以自动装备工具，但创建的Avatar对象并没有使角色自动装备工具
-- 备注：验收reslease通过

-- 函数：UnEquipTool()
-- 函数说明：卸载角色正在装备的工具
-- 代码说明：创建一个工具，使角色能够自动装备工具，1秒后再卸载正在装备的工具，观察角色自动装备的工具是否消失
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色
--local Person = RWObject.Create("Avatar") >>如果用这个角色就不可以自动装备工具
Person.Position = Vector3(0,0.125,3) -- 角色的位置赋值
local toolcrt = RWObject.Create("Tool") -- 创建工具
Person:EquipTool(toolcrt) -- 角色装备工具
wait(1) -- 等待1
Person:UnEquipTool() -- 角色卸下工具
-- 备注：创建的角色没有自动装备工具，而可以移动的Avatar可以自动装备工具，1秒后可以正常卸载工具
-- 备注：验收reslease通过

-- 函数：GetAccessories()
-- 函数说明：获取角色佩戴的所有角色配件，将其角色配件对象作为列表返回
-- 返回值：table
-- 返回值说明：角色配件对象
-- 代码说明：创建一个角色和一个工具，使角色自动佩戴工具，观察工具对象是否返回并打印
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色
Person.Position = Vector3(0,0.125,3) --  给角色位置赋值
local toolcrt = RWObject.Create("Tool") -- 创建工具
Person:EquipTool(toolcrt) -- 角色装备工具
wait(1) -- 等待1
local toollist = {} -- 创建空表
toollist = Person:GetAccessories() -- 获取角色佩戴的所有角色配件
for k,v in pairs(toollist) do -- 输出角色佩戴的所有角色配件的名字
	print(tostring(v.Name))
end
-- 备注：创建的角色没有自动装备角色配件，所以也不会有返回
-- 备注：验收reslease通过

-- 函数：GetPlayingAnimation()
-- 函数说明：获取角色正在播放的动画
-- 返回值：rwobject
-- 返回值说明：animation对象
-- 代码说明：
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) -- 角色位置赋值
local climb = player.动作.攀爬 -- 获取攀爬动作
wait(0.5) -- 等待0.5
climb.LocalClipId = "Climb" -- 动作赋值
climb.Loop = true  -- 动作循环开启
climb:PlayAnimation() -- 动作播放
wait(1) -- 等待1
local ani = player:GetPlayingAnimation() -- 获取玩家当前播放的动画
for k,v in pairs(ani) do -- 输出动画名字
	print(tostring(v.Name))			
end

-- 函数：GetState()
-- 函数说明：获取角色的动作状态
-- 返回值：枚举类型AvatarActionStatus
-- 返回值说明：当前的动作状态
-- 代码说明：创建一个角色对象，并获取当前的动作状态
-- 代码示例：
wait(1) -- 等待1
local avatar = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
local aniName = avatar:GetState() -- 获取角色动作状态
print(tostring(aniName)) -- 输出角色动作状态名字

-- 函数：Move(dir,isAutoSteer,input)
-- 函数说明：使角色向指定方向移动，可以选择是否自动转向
-- 参数1：Vector2
-- 参数1说明：移动方向
-- 参数2：Boolean
-- 参数2说明：True为角色移动前会将自身朝向调整至与移动方向一致、False则不会
-- 参数3：Vector2 
-- 参数3说明：输入方向
-- 代码说明：创建一个角色对象
-- 代码示例：
local avatar = RWObject.Create("Avatar") -- 创建角色
local dir = Vector2(-5,-6) --设置移动方向
local input = Vector2(-5,-10) -- 设置输入方向
wait(1) -- 等待1
avatar:Move(dir,true,input) -- 角色向着给定方向移动

-- 函数：MoveTo(point/partObj)
-- 函数说明：使角色向指定的点或者指定的零件类对象移动，需要先通过CalculateNavMesh计算导航网格。如果输入参数为Vector3，则为向目标点移动；如果输入参数为一个对象，则为向目标对象移动
-- 参数：Vector3(X，Y，Z）
-- 参数说明：向世界坐标point移动；String 向给定的对象移动
-- 代码说明：创建一个角色对象，让角色对象
-- 代码示例：
GameSetting.NavMeshOpen = true -- 游戏的导航网格开启设置
local person = RWObject.Create("Avatar") -- 创建角色
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3.New(0,0.125,10) -- 设置零件的位置
person.Position = Vector3.New(50,0.125,50) -- 设置角色的位置
wait(1) -- 等待1
person:MoveTo(part.Position) -- 角色向着零件的位置移动

-- 函数：RemoveAccessories()
-- 函数说明：移除角色身上所有的角色配件
-- 代码说明：创建一个角色对象,并给该对象添加角色配件，2秒后移除角色所有配件
-- 代码示例：
local Accessoryobj = RWObject.Create("Accessory") -- 创建角色配件
local Person = RWObject.Create("Avatar") -- 创建角色
wait(1) -- 等待1
Person:AddAccessory(Accessoryobj) -- 角色佩戴角色配件
wait(2) -- 等待2
Person:RemoveAccessories() -- 移除角色身上的所有的角色配件
 
-- 函数：GetCurrentEquip()
-- 函数说明：返回当前装备的工具对象
-- 返回值：rwobject
-- 返回值说明：工具对象
-- 代码说明：创建一个角色和一个工具，使角色自动装备工具，并返回一个rwobject工具对象
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色 
--local Person = RWObject.Create("Avatar")  >>如果用这个角色就不可以自动装备工具
local toolcrt = RWObject.Create("Tool") -- 创建工具
Person:EquipTool(toolcrt) -- 角色创建工具
local toolobj = Person:GetCurrentEquip() -- 获取当前装备的工具对象
print(tostring(toolobj.Name)) -- 输出当前装备的工具对象的名字
-- 备注：如果不是123对象是Avatar对象返回为nil
-- 备注：验收reslease通过

-- 函数：TakeDamage(damageValue)
-- 函数说明：使角色的生命值降低，根据参数决定降低的数值
-- 参数：float 
-- 参数说明：角色受到的伤害数值
-- 代码说明： 创建一个角色，使角色当前血量受到指定的数值伤害
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
local damageValue = 20 -- 设置生命值
Person:TakeDamage(damageValue) -- 使角色生命值降低20

-- 函数：Heal(HealValue)
-- 函数说明：使角色的生命值增加，根据参数决定增加的数值
-- 参数：float 
-- 参数说明：float 角色受到的治疗数值
-- 代码说明： 创建一个角色，使角色当前血量受到指定的数值治疗
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
local damageValue = 20 -- 设置生命值
Person:Heal(damageValue) -- 角色生命值增加20

-- 函数：BeKilled()
-- 函数说明：使角色进入死亡状态
-- 代码说明： 创建一个角色，使角色当场进入死亡状态
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person:BeKilled() -- 角色死亡

-- 函数：Relive(forceFiledDuration)
-- 函数说明：使角色复活，并根据参数决定无敌状态的持续时间
-- 参数：float 
-- 参数说明：角色复活后的无敌时间
-- 代码说明： 创建一个角色，使角色当场进入死亡状态,3秒后复活，无敌时间2秒后再次进入死亡状态
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person:BeKilled() -- 角色死亡
wait(3) -- 等待3
Person:Relive(2) -- 角色复活

-- 函数：SetAvatarStateEnabled(state, value)
-- 函数说明：设置该动作状态是否可以进入
-- 参数1：枚举类型AvatarState
-- 参数1说明：角色的动作状态
-- 参数2：Boolean 
-- 参数2说明：是否允许角色进入该状态
-- 代码说明：创建一个角色，不允许该角色进入跳跃动作状态
-- 代码示例：
wait(1) -- 等待1
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person:SetAvatarStateEnabled(Enum.AvatarActionStatus.Jump,false) -- 设置跳跃动作不可以进入

-- 函数：GetAvatarStateEnabled(state)
-- 函数说明：查询该动作状态是否可以进入
-- 参数：枚举类型AvatarState
-- 参数说明：角色的动作状态；
-- 返回值：bool
-- 返回值说明：查询的状态是否可以进入，true为允许进入，false为不允许进入
-- 代码说明：创建一个角色,不允许该角色进入跳跃动作状态，并观察返回的值是否为false
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的角色123
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person:SetAvatarStateEnabled(Enum.AvatarActionStatus.Jump,false) -- 设置跳跃动作不可以进入
wait(1) -- 等待1
local value = Person:GetAvatarStateEnabled(Enum.AvatarActionStatus.Jump) -- 获取跳跃状态是否可以进入
print(tostring(value)) -- 输出跳跃状态是否可以进入

-- 函数：EnterLostControl(lostMode)
-- 函数说明：使角色进入失控状态
-- 参数：枚举类型LostControlMode
-- 参数说明：角色的失控类型；
-- 代码说明：使角色进入失控状态
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
wait(1) -- 等待1
Person:EnterLostControl(LostControlMode.Motion) -- 使角色进入失控状态

-- 函数：EnterLostControl(lostMode)
-- 函数说明：使角色离开失控状态
-- 代码说明：先使角色进入失控状态，5秒后离开失控状态
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
wait(1) -- 等待1
Person:EnterLostControl(LostControlMode.Motion) -- 使角色进入失控状态
wait(5) -- 等待5
Person:ExitLostControl() -- 使角色离开失控状态

-- 函数：SpecialStateChanged(state)
-- 函数说明：返回要监听的指定状态变化的事件
-- 参数：枚举类型AvatarState
-- 参数说明：想要监听的角色动作状态
-- 返回值：event
-- 返回值说明：监听给定动作状态的事件
-- 代码说明：使角色进入跳跃状态观察指定监听事件是否触发
-- 代码示例：
function handle() --监听方法定义
	print("监听跳跃状态成功")
end
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色位置赋值
local listenState = Person:SpecialStateChanged(Enum.AvatarActionStatus.Jump) -- 返回跳跃动作的状态
listenState:Connect(handle) -- 状态监听事件注册
wait(1) -- 等待1
Person:Jump() -- 角色跳跃

-- 函数：RotationSkeleton(objname,angle)
-- 函数说明：旋转自定义零件相对于骨骼点的坐标
-- 代码说明：使角色腰部旋转40度
-- 代码示例：
local Person = RWObject.Create("Avatar") --创建角色
Person.Position = Vector3(0,0.125,5) -- 角色位置赋值
Person:RotationSkeleton("Spine",40) -- 角色腰部旋转40度

-- 事件：OnAvatarEnterState(state, true)
-- 函数说明：角色进入动作状态时，触发此事件
-- 参数：枚举类型AvatarState
-- 参数说明：角色的动作状态
-- 代码说明：创建一个角色，当角色进入动作状态时是否与指定的动作状态匹配，匹配就触发事件
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色位置赋值
Person.OnAvatarEnterState:Connect(function(state) -- 角色进入跳跃动作状态事件注册
	if state == Enum.AvatarActionStatus.Jump then
	print("触发角色进入动作状态时事件")	
	end
end)
wait(1) -- 等待1
Person:Jump() -- 角色跳跃

-- 事件：OnAvatarExitState(state, false)
-- 事件说明：角色离开动作状态时，触发此事件
-- 参数：枚举类型AvatarState 
-- 参数说明：角色的动作状态
-- 代码说明：创建一个角色，当角色离开动作状态时是否与指定的动作状态匹配，匹配就触发事件
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色位置赋值
Person.OnAvatarExitState:Connect(function(state) -- 角色离开动作状态事件注册
	if state == Enum.AvatarActionStatus.Jump then
	print("触发角色离开动作状态时事件")	
	end
end)
wait(1) -- 等待1
Person:Jump() -- 角色跳跃

-- 事件：AvatarStateEnabledChanged(state, value)
-- 事件说明：监听状态的禁用或启用时，触发此事件
-- 参数：枚举类型AvatarState 
-- 参数说明：角色的动作状态
-- 代码说明：设置进入动作状态的禁用,禁用后是否触发该事件
-- 代码示例：
wait(1) -- 等待1
local Person = RWObject.Create("Avatar") -- 创建角色
Person.Position = Vector3(0,0.125,5) -- 角色位置赋值
Person.AvatarStateEnabledChanged:Connect(function(state,value) --跳跃动作的禁止事件注册
	if state == Enum.AvatarActionStatus.Jump and value == false then
	print("触发监听状态的禁用事件")	
	end
end)
wait(2) -- 等待2
Person:SetAvatarStateEnabled(Enum.AvatarActionStatus.Jump,false) -- 设置角色的跳跃状态为禁用

-- 事件：onEnterSeatState()
-- 事件说明：进入乘坐状态时触发
-- 代码说明：创建一个角色和一个座位，让角色自动进入驾驶位，观察是否触发进入乘坐事件
-- 代码示例：
function Enterhandle() -- 进入乘坐状态方法注册
	print("进入乘坐状态时触发")
end
local Person = RWObject.Create("Avatar") -- 创建角色
local seat = RWObject.Create("Seat") -- 创建座位
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person.onEnterSeatState:Connect(Enterhandle) -- 角色进入乘坐状态时的事件注册
wait(1) -- 等待1
seat:Sit(Person) -- 角色坐在座位上

-- 事件：onLeaveSeatState()
-- 事件说明：离开乘坐状态时触发
-- 代码说明：创建一个角色和一个座位，让角色自动进入驾驶位，3秒后自动下车，观察是否触发离开乘坐事件
-- 代码示例：
function Exithandle() -- 离开乘坐状态方法注册
	print("离开乘坐状态时触发")
end
local Person = RWObject.Create("Avatar") -- 创建角色
local seat = RWObject.Create("Seat") -- 创建座位
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person.onLeaveSeatState:Connect(Exithandle) -- 角色离开乘坐状态时的事件注册
wait(1) -- 等待1
seat:Sit(Person) -- 角色进入乘坐状态
wait(3) -- 等待3 
seat:ClearSitting() -- 座位使角色离开

<<<<<有问题>>>>>
-- 事件：onEnterDriveState()
-- 事件说明：进入驾驶状态时触发
-- 代码说明：创建一个角色和一个驾驶位，使角色自动进入驾驶位，观察是否触发进入驾驶位事件
-- 代码示例：
function Enterhandle() -- 进入驾驶状态方法定义
	print("进入驾驶状态时触发")
end
wait(1) -- 等待1
local Person = RWObject.Create("Avatar") -- 创建角色
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person.onEnterDriveState:Connect(Enterhandle) -- 角色进入驾驶位事件注册
wait(1) -- 等待1
vs:Sit(Person) -- 角色进入乘坐状态
-- 备注：创建的人物Avatar进入驾驶没有驾驶的动作，而默认可以移动的角色第一次进入有驾驶动作，自动创建的人物下车在上车后驾驶动作消失
-- 备注：创建的Avatar进入驾驶位报错

<<<<<有问题>>>>>
-- 事件：onLeaveDriveState()
-- 事件说明：离开驾驶状态时触发
-- 代码说明：创建一个角色和一个驾驶位，使角色自动进入驾驶位，3秒后自动下车，观察是否触发离开驾驶位事件
-- 代码示例：
function Exithandle() -- 离开驾驶状态方法定义
	print("离开驾驶状态时触发")
end
local Person = RWObject.Create("Avatar") -- 创建角色
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位
Person.Position = Vector3(0,0.125,5) -- 角色的位置赋值
Person.onLeaveDriveState:Connect(Exithandle) -- 角色离开驾驶状态的事件注册
wait(1) -- 等待1
Person:Sit(vs) -- 角色坐下
wait(3) -- 等待3
vs:ClearSitting() -- 使座位上的玩家离开
-- 备注：创建的人物Avatar进入驾驶没有驾驶的动作，而默认可以移动操控的角色123第一次进入有驾驶动作，自动创建的人物Avatar下车在上车后驾驶动作消失

-- 事件：onHealthChange(healthValue)
-- 事件说明：角色生命值变化时，触发此事件
-- 参数：float
-- 参数说明：角色的生命值
-- 代码说明：创建一个角色，使角色受到指定伤害，观察是否触发角色血量变化事件
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.onHealthChange:Connect(function() -- 角色生命值变化时方法定义
	print("角色血量发生变化")
end)
Person:TakeDamage(1) -- 角色生命值减一
-- 备注：发生一次变化，触发了两次事件，应该为1次
-- 备注： Release验收通过

-- 事件：onAvatarDead()
-- 事件说明：角色进入死亡状态时，触发此事件
-- 代码说明：创建一个角色，使角色立刻死亡，观察是否触发角色死亡事件
-- 代码示例：
local Person = RWObject.Create("Avatar") -- 创建角色
Person.onAvatarDead:Connect(function() -- 角色进入死亡状态事件注册
	print("触发角色死亡事件")
end)
Person:BeKilled() -- 角色自杀

<<<<<有问题>>>>>
-- 事件：onAvatarAnimationPlayed()
-- 事件说明：角色动画播放时，触发此事件
-- 代码说明：
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) -- 角色的位置赋值
player.onAvatarAnimationPlayed:Connect(function() --角色的动画播放事件注册
	print("角色播放事件触发")
end)
wait(1) -- 等待1
local climb = player.动作.攀爬 -- 获取攀爬动作
climb.LocalClipId = "Climb"  -- 攀爬动作赋值
climb:PlayAnimation() -- 攀爬动作播放
-- 备注：角色动画事件触发三次，应该为一次


-- 事件：onMoveToFinished(result)
-- 事件说明：在MoveTo函数执行完毕后，触发此事件
-- 参数1：bool
-- 参数1说明：执行MoveTo函数的结果，True为成功，False为失败
-- 代码说明：创建一个角色和一个零件，使角色移动到零件的位置，移动完毕后观察是否触发事件,True为成功，False为失败
-- 代码示例：
GameSetting.NavMeshOpen = true -- 游戏导航网格开启
local person = RWObject.Create("Avatar") -- 创建角色
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3.New(0,0.125,10) -- 零件的位置赋值
person.Position = Vector3.New(50,0.125,50) -- 角色的位置赋值
person.onMoveToFinished:Connect(function(result) -- 角色的moveTo执行结束事件注册
	print(tostring(result)) -- 输出结果
end)
wait(1) -- 等待1
person:MoveTo(part.Position) -- 角色移动到零件的位置

-- 事件：CollisionEnter(rwobject)
-- 事件说明：角色进入碰撞状态时，触发此事件
-- 参数1：rwobject
-- 参数1说明：角色对象
-- 代码说明：创建一个角色和一个零件，用MoveTo方法使角色碰撞零件，观察角色碰撞事件是否触发
-- 代码示例：
wait(1) -- 等待1
GameSetting.NavMeshOpen = true -- 导航网格开启设置
wait(1) -- 等待1
local person = RWObject.Create("Avatar") -- 创建角色
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3.New(0,0.125,10) -- 零件的位置赋值
person.Position = Vector3.New(50,0.125,50) -- 角色的位置赋值
person.CollisionEnter:Connect(function(rwobject) --角色进入碰撞事件注册
	print(tostring("触发碰撞事件,碰撞的角色为："..rwobject.Name))
end)
wait(1) -- 等待1
person:MoveTo(part.Position) -- 角色移动到零件位置