-- 函数：Sit(humanoidObj)
-- 函数说明：使目标角色进入乘坐状态
-- 参数：string 
-- 参数说明：角色对象
-- 代码说明：使目标角色自动坐入驾驶位
-- 代码示例：
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位对象
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的123角色
vs:Sit(Person) -- 使角色坐在驾驶位上

-- 函数：ClearSitting()
-- 函数说明：自动下车
-- 代码说明：使目标角色自动坐入驾驶位，然后过两秒后自动下车
-- 代码示例：
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位对象
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的123角色
vs:Sit(Person) -- 使角色坐在驾驶位上
wait(2) -- 等待2
vs:ClearSitting() -- 使驾驶位上的人下车

-- 函数：Reset()
-- 函数说明：使驾驶位旋转恢复(0,0,0)，并且使驾驶位位置上升一段距离
-- 代码说明：使目标角色自动坐入驾驶位,然后过两秒后驾驶位旋转恢复(0,0,0)
-- 代码示例：
wait(1) -- 等待1
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位对象
vs.Position = Vector3(5,0.125,5) -- 位置赋值
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色
vs:Sit(Person) -- 使角色坐在驾驶位上
wait(1) -- 等待1
vs:Reset() -- 是驾驶位旋转恢复，并且使驾驶位位置上升一段距离

-- 事件：onEnterSeatState()
-- 事件说明：进入乘坐状态时触发
-- 代码说明：使目标角色自动坐入骑乘位,观察是否能够触发进入乘坐事件
-- 代码示例：
function EnterEvent() -- 定义进入乘坐的方法 
	print("<<<<<触发进入乘坐事件>>>>>")
end
local vs = RWObject.Create("Seat") -- 创建座位
vs.Position = Vector3(5,0.125,5) -- 位置设置
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的123角色
vs:Sit(Person) -- 使角色坐在座位上
vs.onEnterSeatState:Connect(EnterEvent) -- 座位注册进入乘坐的事件

-- 事件：onLeaveSeatState()
-- 事件说明：离开乘坐状态时触发
-- 代码说明：使目标角色自动坐入骑乘位,一秒后自动下车,观察是否能够触发离开乘坐事件
-- 代码示例：
function ExitEvent() -- 定义离开乘坐的方法
	print("<<<<<触发离开乘坐事件>>>>>")
end
local vs = RWObject.Create("Seat") -- 创建座位
vs.Position = Vector3(5,0.125,5) -- 座位的位置赋值
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的123角色
vs:Sit(Person) -- 座位使角色坐下
wait(1) -- 等待1
vs:ClearSitting() -- 使座位上的角色离开
vs.onLeaveSeatState:Connect(ExitEvent) -- 座位注册离开乘坐的方法

-- 事件：onEnterDriveState()
-- 事件说明：进入驾驶状态时触发
-- 代码说明：使目标角色坐入驾驶位,观察是否能够触发进入驾驶事件
-- 代码示例：
function EnterEvent() -- 进入驾驶位的方法定义
	print("<<<<<触发进入驾驶位事件>>>>>")
end
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位
wait(2) -- 等待2
local Person = WorkSpace[123] -- 获取工作区下的123对象
vs:Sit(Person) -- 驾驶位使角色坐下
vs.onEnterDriveState:Connect(EnterEvent) -- 驾驶位注册进入驾驶位事件

-- 事件：onLeaveDriveState()
-- 事件说明：离开驾驶状态时触发
-- 代码说明：使目标角色坐入驾驶位,一秒后自动下车，观察是否能够触发离开驾驶事件
-- 代码示例：
function ExitEvent() -- 离开驾驶位方法定义
	print("<<<<<触发离开驾驶位事件>>>>>")
end
local vs = RWObject.Create("VehicleSeat") -- 创建驾驶位
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色
wait(1) -- 等待1
vs:Sit(Person) -- 驾驶位使角色坐下
wait(1) -- 等待1
vs:ClearSitting() -- 驾驶位使角色离开
vs.onLeaveDriveState:Connect(ExitEvent) -- 角色离开驾驶位事件注册

-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为驾驶位vs1对象创建一个物理约束
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
vs1.Position = Vector3(0,0.125,2) -- 驾驶位1位置赋值
local vs2 = RWObject.Create("VehicleSeat") -- 创建驾驶位2
vs1.Position = Vector3(0,0.125,5) -- 驾驶位2位置赋值
vs1:CreateJoint(vs2,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位2以SplitJoint方式创建一个物理约束

-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：取驾驶位vs1对象的所有约束对象
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
local vs2 = RWObject.Create("VehicleSeat") -- 创建驾驶位2
local vs3 = RWObject.Create("VehicleSeat") -- 创建驾驶位3
vs1.Position = Vector3(0,1,6) -- 驾驶位1的位置赋值
vs1.Anchored = false -- 驾驶位1的运动学设置
vs2.Position = Vector3(0,1,9) -- 驾驶位2的位置赋值
vs2.Anchored = false -- 驾驶位2的运动学设置
vs3.Position = Vector3(0,1,12) -- 驾驶位3的位置赋值
vs3.Anchored = false -- 驾驶位3的运动学位置
vs1:CreateJoint(vs2,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位2以SplitJoint方式创建一个物理约束
vs1:CreateJoint(vs3,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建一个空表
JointList = vs1:GetJointList() -- 获取所有与驾驶位1连接的对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与驾驶位1连接的对象的名字
	print(tostring(v.Name))
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
local vs2 = RWObject.Create("VehicleSeat") -- 创建驾驶位2
local vs3 = RWObject.Create("VehicleSeat") -- 创建驾驶位3
vs1.Position = Vector3(0,1,6) -- 驾驶位1的位置赋值
vs2.Position = Vector3(0,1,9) -- 驾驶位2的位置赋值
vs3.Position = Vector3(0,1,12) -- 驾驶位3的位置赋值
vs1:CreateJoint(vs2,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位2以SplitJoint方式创建一个物理约束
vs1:CreateJoint(vs3,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
vs1:DelAllJoint() -- 解除所有与驾驶位1约束的对象

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有驾驶位对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取驾驶位对象列表
-- 代码示例：
local seat1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
local seat2 = RWObject.Create("VehicleSeat") -- 创建驾驶位2
local seat3 = RWObject.Create("VehicleSeat") -- 创建驾驶位3
seat1.Position = Vector3(0,1,6) -- 驾驶位1的位置赋值
seat1.Anchored = false -- 驾驶位1的运动学设置
seat2.Position = Vector3(0,1,9) -- 驾驶位2的位置赋值
seat2.Anchored = false -- 驾驶位2的运动学设置
seat3.Position = Vector3(0,1,12) -- 驾驶位3的位置赋值
seat3.Anchored = false -- 驾驶位3的运动学设置
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位2以SplitJoint方式创建一个物理约束
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位3以SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建空表
JointList = seat1:GetJointPartList() -- 获取所有与驾驶位1约束的对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出驾驶位1约束的所有对象的名字
	print(tostring(v.Name))
end
-- 备注:打印的驾驶位对象为空，应该打印每个驾驶位对象

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个驾驶位对象vs1对象并获取它的质量
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位
vs1.Position = Vector3(0,10,0) -- 驾驶位1的位置赋值
vs1.Name = "vs1" -- 驾驶位的名字赋值为vs1
wait(1) -- 等待1
local MassValue = vs1:GetMass() -- 获取驾驶位1的质量
print(tostring(MassValue)) -- 输出驾驶位1的质量值

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：创建一个驾驶位对象vs1对象，观察是否可以可以打印bool值
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
vs1.CanCollide = false -- 驾驶位的可碰撞属性设置
vs1.Position = Vector3(0,0.125,6) -- 驾驶位1的位置赋值
local value = vs1:CanCollideWith() -- 获取驾驶位1的可碰撞信息
print(tostring(value)) -- 输出驾驶位1的可碰撞信息

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建一个驾驶位vs1对象,并给vs1对象添加一个碰撞事件，只要发生碰撞就会响应事件
-- 代码示例：
function EnterEvent() --碰撞进入方法定义
	print("<<<<<触发碰撞事件>>>>>")
end
local vs1 = RWObject.Create("VehicleSeat") -- 创建一个驾驶位
vs1.Position = Vector3(0,0.125,6) -- 驾驶位1的位置赋值
vs1.CollisionEnter:Connect(EnterEvent) -- 驾驶位1的碰撞进入的事件注册

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建驾驶位vs1对象,给vs1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
function ExitEvent() -- 碰撞离开方法定义
	print("<<<<<触发离开碰撞事件>>>>>")
end
local vs1 = RWObject.Create("VehicleSeat") -- 创建一个驾驶位
vs1.Position = Vector3(0,0.125,6) -- 驾驶位1的位置赋值
vs1.CollisionExit:Connect(ExitEvent) -- 驾驶位1的碰撞离开方法注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给驾驶位vs1对象添加两个物理约束，并给vs1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local vs1 = RWObject.Create("VehicleSeat") -- 创建驾驶位1
local vs2 = RWObject.Create("VehicleSeat") -- 创建驾驶位2
local vs3 = RWObject.Create("VehicleSeat") -- 创建驾驶位3
vs1.Position = Vector3.New(0,10,0) -- 驾驶位1的位置赋值
vs2.Position = Vector3.New(0,15,0) -- 驾驶位2的位置赋值
vs3.Position = Vector3.New(0,20,0) -- 驾驶位3的位置赋值
vs1:CreateJoint(vs2,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位2以SplitJoint方式创建一个物理约束
vs1:CreateJoint(vs3,JOINT_TYPE.SplitJoint) -- 使驾驶位1与驾驶位3以SplitJoint方式创建一个物理约束
wait(2) -- 等待2
vs1:DelAllJoint() -- 断开所有与驾驶位1的约束
function JointBreakEvent() -- 删除约束时触发的方法定义
	print("删除约束时触发")
end
vs1.JointBreak:Connect(JointBreakEvent) -- 驾驶位1的断开事件注册