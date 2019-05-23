-- 函数：Sit(humanoidObj)
-- 函数说明：使目标角色进入乘坐状态
-- 参数：string 
-- 参数说明：角色对象
-- 代码说明：使目标角色自动坐入骑乘位
-- 代码示例：
local seat = RWObject.Create("Seat") -- 创建座位
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在座位

-- 函数：ClearSitting()
-- 函数说明：自动下车
-- 代码说明：使目标角色自动坐入骑乘位，然后过两秒后自动下车
-- 代码示例：
local seat = RWObject.Create("Seat") -- 创建座位
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在座位
wait(2) -- 等待2
seat:ClearSitting() -- 使座位上的角色离开

-- 函数：Reset()
-- 函数说明：使驾驶位旋转恢复(0,0,0)，并且使驾驶位位置上升一段距离
-- 代码说明：使目标角色自动坐入骑乘位,然后过两秒后驾驶位旋转恢复(0,0,0)
-- 代码示例：
wait(1) -- 等待1
local seat = RWObject.Create("Seat") -- 创建座位
seat.Position = Vector3(5,0.125,5) -- 座位的位置赋值
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在座位上
wait(2) -- 等待2
seat:Reset() -- 座位选作恢复

-- 事件：onEnterSeatState()
-- 事件说明：进入乘坐状态时触发
-- 代码说明：使目标角色自动坐入骑乘位,观察是否能够触发进入乘坐事件
-- 代码示例：
function EnterEvent() -- 进入乘坐方法定义
	print("<<<<<触发进入乘坐事件>>>>>")
end
local seat = RWObject.Create("Seat") -- 创建座位
seat.Position = Vector3(5,0.125,5) -- 座位的位置赋值
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在座位上
seat.onEnterSeatState:Connect(EnterEvent) -- 进入进入乘坐事件注册

-- 事件：onLeaveSeatState()
-- 事件说明：离开乘坐状态时触发
-- 代码说明：使目标角色自动坐入骑乘位,一秒后自动下车,观察是否能够触发离开乘坐事件
-- 代码示例：
function ExitEvent() -- 触发离开乘坐方法定义
	print("<<<<<触发离开乘坐事件>>>>>")
end
local seat = RWObject.Create("Seat") -- 创建座位
seat.Position = Vector3(5,0.125,5) -- 座位的位置赋值
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在座位上
seat:ClearSitting() -- 使座位上的角色离开
wait(1) -- 等待1
seat.onLeaveSeatState:Connect(ExitEvent) -- 触发离开乘坐事件定义

-- 事件：onEnterDriveState()
-- 事件说明：进入驾驶状态时触发
-- 代码说明：使目标角色坐入驾驶位,观察是否能够触发进入驾驶事件
-- 代码示例：
function EnterEvent() -- 进入驾驶位方法定义
	print("<<<<<触发进入驾驶位事件>>>>>")
end
local seat = RWObject.Create("VehicleSeat") -- 创建驾驶位
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的角色123
seat:Sit(Person) -- 角色坐在驾驶位上
seat.onEnterDriveState:Connect(EnterEvent) -- 进入驾驶位事件注册

-- 事件：onLeaveDriveState()
-- 事件说明：离开驾驶状态时触发
-- 代码说明：使目标角色坐入驾驶位,一秒后自动下车，观察是否能够触发离开驾驶事件
-- 代码示例：
function ExitEvent() -- 触发离开驾驶位方法定义
	print("<<<<<触发离开驾驶位事件>>>>>")
end
local seat = RWObject.Create("VehicleSeat") -- 创建驾驶位
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的角色123
wait(1) -- 等待1
seat:Sit(Person) -- 使角色坐在驾驶位上
wait(1) -- 等待1
seat:ClearSitting() -- 使驾驶位上的角色离开
seat.onLeaveDriveState:Connect(ExitEvent) -- 触发离开驾驶位方法事件定义

-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为座位seat1对象创建一个物理约束
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位1
seat1.Position = Vector3(0,0.125,2) -- 座位1的位置设置
local seat2 = RWObject.Create("Seat") -- 创建座位2
seat2.Position = Vector3(0,0.125,5) -- 座位2的位置社会自
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 座位1与座位seat2以SplitJoint方式创建一个物理约束

-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：取零件seat1对象的所有约束对象
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位1
local seat2 = RWObject.Create("Seat") -- 创建座位2
local seat3 = RWObject.Create("Seat") -- 创建座位3
seat1.Position = Vector3(0,1,6) -- 座位1的位置赋值
seat1.Anchored = false -- 座位1的运动学赋值
seat2.Position = Vector3(0,1,9) -- 座位2的位置赋值
seat2.Anchored = false -- 座位2的运动学赋值
seat3.Position = Vector3(0,1,12) -- 座位3的位置赋值
seat3.Anchored = false -- 座位3的运动学赋值
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 座位1与座位seat2以SplitJoint方式创建一个物理约束
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 座位1与座位seat3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建一个空表
JointList = seat1:GetJointList() -- 获取座位1下的所有约束对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与座位1下的所有约束对象的名字
	print(tostring(v.Name))
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位1
local seat2 = RWObject.Create("Seat") -- 创建座位2
local seat3 = RWObject.Create("Seat") -- 创建座位3
seat1.Position = Vector3(0,1,6) -- 座位1的位置赋值 
seat2.Position = Vector3(0,1,9) -- 座位2的位置赋值
seat3.Position = Vector3(0,1,12) -- 座位3的位置赋值
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 座位1与座位2以SplitJoint方式创建一个物理约束
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 座位1与座位3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
seat1:DelAllJoint() -- 删除座位1的所有约束

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有驾驶位对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取座位对象列表
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位1
local seat2 = RWObject.Create("Seat") -- 创建座位2
local seat3 = RWObject.Create("Seat") -- 创建座位3
seat1.Position = Vector3(0,1,6) -- 座位1的位置赋值 
seat1.Anchored = false -- 座位1的运动学赋值
seat2.Position = Vector3(0,1,9) -- 座位2的位置赋值
seat2.Anchored = false -- 座位1的运动学赋值
seat3.Position = Vector3(0,1,12) -- 座位3的位置赋值
seat3.Anchored = false -- 座位1的运动学赋值
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 座位1与座位2以SplitJoint方式创建一个物理约束
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 座位1与座位3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建 一个空表
JointList = seat1:GetJointPartList() -- 获取座位1下的所有约束对象 
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与座位1下的所有约束对象的名字
	print(tostring(v.Name))
end
-- 备注:打印的座位对象为空

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个座位seat1对象并获取它的质量
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位
seat1.Position = Vector3(0,10,0) -- 座位的位置赋值
seat1.Name = "seat1" -- 座位的名字赋值为seat1
wait(1) -- 等待1
local MassValue =seat1:GetMass() -- 获取座位的自身的质量的值
print(tostring(MassValue)) -- 输出质量的值

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：更改座位seat1对象的CanCollide属性，调用CanCollideWith函数观察返回参数是否为更改后的值false,不更改默认为true
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位
seat1.CanCollide = false -- 座位的是否碰撞赋值
seat1.Position = Vector3(0,0.125,6) -- 座位的位置赋值
local value = seat1:CanCollideWith() -- 获取的座位是否能参与碰撞
print(tostring(value)) -- 输出座位是否碰撞

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建一个座位seat1对象,并给seat1对象添加一个碰撞事件，只要发生碰撞就会响应事件
-- 代码示例：
function EnterEvent() -- 进入碰撞方法定义
	print("<<<<<触发碰撞事件>>>>>")
end
local seat1 = RWObject.Create("Seat") -- 创建座位
seat1.Position = Vector3(0,0.125,6) -- 座位的位置赋值
seat1.CollisionEnter:Connect(EnterEvent) -- 座位进入碰撞注册


-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建座位seat1对象,给seat1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
function ExitEvent() -- 进入碰撞方法定义
	print("<<<<<触发离开碰撞事件>>>>>")
end
local seat1 = RWObject.Create("Seat") -- 创建座位
seat1.Position = Vector3(0,0.125,6) -- 座位的位置赋值
seat1.CollisionExit:Connect(ExitEvent) -- 进入碰撞方法注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给座位seat1对象添加两个物理约束，并给seat1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local seat1 = RWObject.Create("Seat") -- 创建座位1
local seat2 = RWObject.Create("Seat") -- 创建座位2
local seat3 = RWObject.Create("Seat") -- 创建座位3
seat1.Position = Vector3.New(0,10,0) -- 座位1的位置赋值
seat2.Position = Vector3.New(0,15,0) -- 座位2的位置赋值
seat3.Position = Vector3.New(0,20,0) -- 座位3的位置赋值
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 座位1与座位2以SplitJoint方式创建一个物理约束
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 座位1与座位3以SplitJoint方式创建一个物理约束
wait(2) -- 等待2
seat1:DelAllJoint() -- 座位1约束删除
function JointBreakEvent() -- 删除约束方法定义
	print("删除约束时触发")
end
seat1.JointBreak:Connect(JointBreakEvent) -- 删除约束事件定义