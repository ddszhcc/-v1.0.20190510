-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为自定义零件m1对象创建一个物理约束
-- 代码示例：
local m1 = RWObject.Create("MeshPart") -- 创建自定义零件1
local m2 = RWObject.Create("MeshPart") -- 创建自定义零件2
m1.Position = Vector3(0,1,3) -- 自定义零件1的位置赋值
m1.Anchored = false -- 自定义零件1的运动学赋值
m2.Position = Vector3(0,1,6) -- 自定义零件2的位置赋值
m2.Anchored = false -- 自定义零件2的运动学赋值
local jointtype = m1:CreateJoint(m2,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件2以SplitJoint方式建立约束
-- 特殊限制


-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：取零件m1对象的所有约束对象
-- 代码示例：
local m1 = RWObject.Create("MeshPart") -- 创建自定义零件1
local m2 = RWObject.Create("MeshPart") -- 创建自定义零件2
local m3 = RWObject.Create("MeshPart") -- 创建自定义零件3
m1.Position = Vector3(0,1,6) -- 自定义零件1的位置赋值
m1.Anchored = false -- 自定义零件1的运动学赋值
m2.Position = Vector3(0,1,9) -- 自定义零件2的位置赋值
m2.Anchored = false -- 自定义零件2的运动学赋值
m3.Position = Vector3(0,1,12) -- 自定义零件3的位置赋值
m3.Anchored = false -- 自定义零件3的运动学赋值
m1:CreateJoint(m2,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件2以SplitJoint方式建立约束
m1:CreateJoint(m3,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件3以SplitJoint方式建立约束
wait(1) -- 等待1
local JointList = {} -- 创建新表
JointList = m1:GetJointList() -- 获取与自定义零件1连接的所有的自定义零件
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与自定义零件1连接的所有的自定义零件的名字
	print(tostring(v.Name))
end
-- 特殊限制

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local m1 = RWObject.Create("MeshPart") -- 创建自定义零件1
local m2 = RWObject.Create("MeshPart") -- 创建自定义零件2
local m3 = RWObject.Create("MeshPart") -- 创建自定义零件3
m1.Position = Vector3(0,1,6) -- 自定义零件1的位置赋值
m1.Anchored = false -- 自定义零件1的运动学赋值
m2.Position = Vector3(0,1,9) -- 自定义零件2的位置赋值
m2.Anchored = false -- 自定义零件2的运动学赋值
m3.Position = Vector3(0,1,12) -- 自定义零件3的位置赋值
m3.Anchored = false -- 自定义零件3的运动学赋值
m1:CreateJoint(m2,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件2以SplitJoint方式建立约束
m1:CreateJoint(m3,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件3以SplitJoint方式建立约束
wait(1) -- 等待1
m1:DelAllJoint() -- 解除所有与自定义零件1约束的零件
-- 特殊限制

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有零件对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取自定义零件对象列表
-- 代码示例：
local m1 = RWObject.Create("MeshPart") -- 创建自定义零件1
local m2 = RWObject.Create("MeshPart") -- 创建自定义零件2
local m3 = RWObject.Create("MeshPart") -- 创建自定义零件3
m1.Position = Vector3(0,1,6) -- 自定义零件1的位置赋值
m1.Anchored = false -- 自定义零件1的运动学赋值
m2.Position = Vector3(0,1,9) -- 自定义零件2的位置赋值
m2.Anchored = false -- 自定义零件2的运动学赋值
m3.Position = Vector3(0,1,12) -- 自定义零件3的位置赋值
m3.Anchored = false -- 自定义零件3的运动学赋值
m1:CreateJoint(m2,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件2以SplitJoint方式建立约束
m1:CreateJoint(m3,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件3以SplitJoint方式建立约束
wait(1) -- 等待1
local JointList = {} --创建新表
JointList = m1:GetJointPartList() -- 获取所有与自定义零件1连接的零件
wait(1) -- 等待1
for k,v in pairs(JointList) do --输出所有与自定义零件1连接的零件的名字
	print(tostring(v.Name))
end
-- 备注:打印的自定义零件对象为空，应该打印每个自定义零件对象

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个自定义零件m1对象并获取它的质量
-- 代码示例：
local m1 = RWObject.Create("MeshPart") -- 创建自定义零件1
m1.Position = Vector3(0,10,0) --自定义零件1的位置赋值
m1.Name = "m1" --自定义零件1 的名字赋值为m1
wait(1) -- 等待1
local MassValue = m1:GetMass() -- 获取质量
print(tostring(MassValue)) -- 输出质量

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：更改自定义零件m1对象的CanCollide属性，调用CanCollideWith函数观察返回参数是否为更改后的值false,不更改默认为true
-- 代码示例：
local m1 = RWObject.Create("MeshPart") --创建自定义零件1
m1.CanCollide = false -- 自定义零件1的可碰撞属性赋值
m1.Position = Vector3(0,0.125,6) -- 自定义零件1的位置赋值
local value = m1:CanCollideWith() -- 获取自定义零件1的可碰撞
print(tostring(value)) -- 输出自定义零件1的可碰撞

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建自定义零件m1对象,给m1对象添加了一个碰撞事件，碰撞就会响应事件
-- 代码示例：
local function EnterEvent(res) -- 自定义零件1的可碰撞方法定义
	print("进入碰撞触发事件>>>>>".."谁碰撞了我："..res.Name)
end
local m1 = RWObject.Create("MeshPart") --创建自定义零件1
m1.Anchored = false -- 自定义零件1的运动学赋值 
m1.Position = Vector3(0,10,0) -- 自定义零件1的位置赋值
m1.CollisionEnter:Connect(EnterEvent) -- 自定义零件1的可碰撞事件定义

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建零件m1对象,给m1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
local function ExitEvent(res) -- 自身结束碰撞方法定义
	print("离开碰撞触发事件>>>>>".."谁离开了碰撞："..res.Name)
end
local m1 = RWObject.Create("MeshPart")  --创建自定义零件1
m1.Anchored = false  -- 自定义零件1的运动学赋值 
m1.Position = Vector3(0,10,0) -- 自定义零件1的位置赋值
m1.CollisionExit:Connect(ExitEvent) -- 自定义零件1的可碰撞事件定义

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给零件m1对象添加两个物理约束，并给m1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local m1 = RWObject.Create("MeshPart")  --创建自定义零件1
local m2 = RWObject.Create("MeshPart")  --创建自定义零件2
local m3 = RWObject.Create("MeshPart")  --创建自定义零件3
m1.Anchored = false  -- 自定义零件1的运动学赋值 
m1.Position = Vector3.New(0,10,0) -- 自定义零件1的位置赋
m2.Anchored = false  -- 自定义零件1的运动学赋值 
m2.Position = Vector3.New(0,15,0) -- 自定义零件1的位置赋
m3.Anchored = false  -- 自定义零件1的运动学赋值 
m3.Position = Vector3.New(0,20,0) -- 自定义零件1的位置赋
m1:CreateJoint(m2,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件2以SplitJoint方式建立约束
m1:CreateJoint(m3,JOINT_TYPE.SplitJoint) --使自定义零件1与自定义零件3以SplitJoint方式建立约束
wait(2) -- 等待2
m1:DelAllJoint() -- 解除与m1约束的所有对象
function JointBreakEvent() --删除约束方法定义
	print("删除约束时触发")
end
m1.JointBreak:Connect(JointBreakEvent) -- 删除约束事件注册



