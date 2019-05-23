--备注：无法使用脚本创建轮胎，且返回的类型为零件

-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为驾驶位w1对象创建一个物理约束
-- 代码示例：
local w1 = RWObject.Create("Wheel") -- 创建轮胎1
w1.Position = Vector3(0,0.125,2) -- 轮胎的位置赋值
local w2 = RWObject.Create("Wheel") -- 创建轮胎2
w1.Position = Vector3(0,0.125,5) -- 轮胎2的位置赋值
w1:CreateJoint(w2,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎2以SplitJoint的方式约束起来

-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：取驾驶位w1对象的所有约束对象
-- 代码示例：
local w1 = RWObject.Create("Wheel") -- 创建轮胎1
local w2 = RWObject.Create("Wheel") -- 创建轮胎2
local w3 = RWObject.Create("Wheel") -- 创建轮胎3
w1.Position = Vector3(0,1,6) -- 轮胎1的位置赋值
w1.Anchored = false -- 轮胎1的运动学赋值
w2.Position = Vector3(0,1,9) -- 轮胎2的位置赋值
w2.Anchored = false -- 轮胎2的运动学赋值
w3.Position = Vector3(0,1,12) -- 轮胎3的位置赋值
w3.Anchored = false -- 轮胎3的运动学赋值
w1:CreateJoint(w2,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎2以SplitJoint的方式约束起来
w1:CreateJoint(w3,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎3以SplitJoint的方式约束起来
wait(1) -- 等待1
local JointList = {} -- 创建空表
JointList = w1:GetJointList() -- 获取与轮胎1所有的约束的对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与轮胎1约束的对象的名字
	print(tostring(v.Name))
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local w1 = RWObject.Create("Wheel") -- 创建轮胎1
local w2 = RWObject.Create("Wheel") -- 创建轮胎2
local w3 = RWObject.Create("Wheel") -- 创建轮胎3
w1.Position = Vector3(0,1,6) -- 轮胎1的位置赋值
w2.Position = Vector3(0,1,9) -- 轮胎2的位置赋值
w3.Position = Vector3(0,1,12) -- 轮胎3的位置赋值
w1:CreateJoint(w2,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎2以SplitJoint的方式约束起来
w1:CreateJoint(w3,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎3以SplitJoint的方式约束起来
wait(1) -- 等待1
w1:DelAllJoint() -- 解除所有与轮胎1约束的零件

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有驾驶位对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取驾驶位对象列表
-- 代码示例：
local seat1 = RWObject.Create("Wheel") --创建轮胎1
local seat2 = RWObject.Create("Wheel") -- 创建轮胎2
local seat3 = RWObject.Create("Wheel") -- 创建轮胎3
seat1.Position = Vector3(0,1,6) -- 轮胎1的位置赋值
seat1.Anchored = false -- 轮胎1的运动学赋值
seat2.Position = Vector3(0,1,9) -- 轮胎2的位置赋值
seat2.Anchored = false -- 轮胎2的运动学赋值
seat3.Position = Vector3(0,1,12) -- 轮胎3的位置赋值
seat3.Anchored = false -- 轮胎3的运动学赋值
seat1:CreateJoint(seat2,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎2以SplitJoint的方式约束起来
seat1:CreateJoint(seat3,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎3以SplitJoint的方式约束起来
wait(1) -- 等待1
local JointList = {} -- 创建新表
JointList = seat1:GetJointPartList() -- 与轮胎1约束的所有对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与轮胎1约束的对象的名字
	print(tostring(v.Name))
end
-- 备注:打印的驾驶位对象为空，应该打印每个驾驶位对象

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个驾驶位对象w1对象并获取它的质量
-- 代码示例：
local w1 = RWObject.Create("Wheel")
w1.Position = Vector3(0,10,0)
w1.Name = "w1"
wait(1)
local MassValue = w1:GetMass()
print(tostring(MassValue))

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：创建一个驾驶位对象w1对象，观察是否可以可以打印bool值
-- 代码示例：
local w1 = RWObject.Create("Wheel") -- 创建轮胎
w1.CanCollide = false -- 轮胎的可碰撞属性赋值
w1.Position = Vector3(0,0.125,6) -- 轮胎的位置赋值
local value = w1:CanCollideWith() -- 获取轮胎的可碰撞属性
print(tostring(value)) -- 输出轮胎的可碰撞属性

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建一个驾驶位w1对象,并给w1对象添加一个碰撞事件，只要发生碰撞就会响应事件
-- 代码示例：
function EnterEvent() -- 自身进入碰撞时方法定义
	print("<<<<<触发碰撞事件>>>>>")
end
local w1 = RWObject.Create("Wheel") -- 创建轮胎
w1.Position = Vector3(0,0.125,6) -- 轮胎的位置赋值
w1.CollisionEnter:Connect(EnterEvent) -- 轮胎的进入碰撞事件注册

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建驾驶位w1对象,给w1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
function ExitEvent() -- 自身结束碰撞方法定义
	print("<<<<<触发离开碰撞事件>>>>>")
end
local w1 = RWObject.Create("Wheel") -- 创建轮胎
w1.Position = Vector3(0,0.125,6) -- 轮胎的位置赋值
w1.CollisionExit:Connect(ExitEvent) -- 轮胎的结束碰撞事件注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给驾驶位w1对象添加两个物理约束，并给w1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local w1 = RWObject.Create("Wheel") -- 创建轮胎1
local w2 = RWObject.Create("Wheel") -- 创建轮胎2
local w3 = RWObject.Create("Wheel") -- 创建轮胎3
w1.Position = Vector3.New(0,10,0) -- 轮胎1的位置赋值
w2.Position = Vector3.New(0,15,0) -- 轮胎2的位置赋值
w3.Position = Vector3.New(0,20,0) -- 轮胎3的位置赋值
w1:CreateJoint(w2,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎2以SplitJoint的方式约束起来
w1:CreateJoint(w3,JOINT_TYPE.SplitJoint) -- 使轮胎1与轮胎3以SplitJoint的方式约束起来
wait(2) -- 等待2
w1:DelAllJoint() -- 轮胎1解除与他身上所有约束的对象
function JointBreakEvent() -- 删除约束方法定义
	print("删除约束时触发")
end
w1.JointBreak:Connect(JointBreakEvent) -- 轮胎1的删除约束事件注册