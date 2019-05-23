-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为零件p1对象创建一个物理约束
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件
local p2 = RWObject.Create("Part") -- 创建零件
p1.Name = "p1" -- 零件1的名字赋值为p1
p1.Position = Vector3.New(0,10,0) -- p1的位置赋值
p2.Name = "p2" -- 零件2的名字赋值为p2
p2.Position = Vector3(0,20,0) -- p2的位置赋值
local joint1 = p1:CreateJoint(p2,JOINT_TYPE.SplitJoint) -- 使零件1与零件2以SplitJoint的方式约束
	
-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表

-- 返回值：table
-- 返回值说明：约束对象列表
-- 代码说明：取零件p1对象的所有约束
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
local p3 = RWObject.Create("Part") -- 创建零件3
p1.Position = Vector3.New(0,10,0) -- 零件1设置位置
p2.Position = Vector3.New(0,15,0) -- 零件2设置位置
p3.Position = Vector3.New(0,20,0) -- 零件3设置位置
p1:CreateJoint(p2,JOINT_TYPE.SplitJoint) -- 使零件1与零件2以SplitJoint的方式约束
p1:CreateJoint(p3,JOINT_TYPE.SplitJoint) -- 使零件1与零件3以SplitJoint的方式约束
wait(1) -- 等待1
local wherelist = {} -- 创建空表
wherelist =  p1:GetJointList() -- 获取所有与零件1约束的零件
for k,v in pairs(wherelist) do -- 输出所有的与零件1约束的零件名字
	print(tostring(v.Name)) 
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
local p3 = RWObject.Create("Part") -- 创建零件3
p1.Position = Vector3.New(0,10,0) -- 零件1位置赋值
p2.Position = Vector3.New(0,15,0) -- 零件2位置赋值
p3.Position = Vector3.New(0,20,0) -- 零件3位置赋值
p1:CreateJoint(p2,JOINT_TYPE.SplitJoint) -- 使零件1与零件2以SplitJoint的方式约束
p1:CreateJoint(p3,JOINT_TYPE.SplitJoint) -- 使零件1与零件3以SplitJoint的方式约束
wait(1) -- 等待1
p1:DelAllJoint() -- 解除与零件1约束的所有零件

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有零件对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取零件对象列表
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
local p3 = RWObject.Create("Part") -- 创建零件3
p1.Position = Vector3(0,1,6) -- 零件1位置赋值
p1.Anchored = false -- 零件1运动学赋值
p2.Position = Vector3(0,1,9) -- 零件2位置赋值
p2.Anchored = false -- 零件2运动学赋值
p3.Position = Vector3(0,1,12) -- 零件3位置赋值
p3.Anchored = false -- 零件3运动学赋值
p1:CreateJoint(p2,JOINT_TYPE.SplitJoint) -- 使零件1与零件2以SplitJoint的方式约束
p1:CreateJoint(p3,JOINT_TYPE.SplitJoint) -- 使零件1与零件3以SplitJoint的方式约束
wait(1) -- 等待1
local JointList = {} -- 创建空表
JointList = p1:GetJointPartList() -- 获取零件1约束的所有零件
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与零件1约束的零件的名字
	print(tostring(v.Name))
end
-- 备注:打印的零件对象为空，应该打印每个零件对象


-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量值
-- 代码说明：创建一个零件p1对象并获取它的质量
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件
p1.Position = Vector3(0,10,0) -- 零件位置赋值
p1.Name = "p1" -- 零件名字赋值为p1
wait(1) -- 等待1
local MassValue = p1:GetMass() -- 获取质量
print(tostring(MassValue)) -- 输出质量

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：创建一个零件p1对象并获取它是否可以参与碰撞
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件
local value = p1:CanCollideWith() -- 获取零件是否能碰撞
print(tostring(value)) -- 输出零件是否能碰撞

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建零件p1对象，给p1添加了一个碰撞事件，碰撞就会响应事件
-- 代码示例：
local function EnterEvent(res) -- 进入碰撞方法定义
	print("进入碰撞触发事件>>>>>".."谁碰撞了我："..res.Name)
end
local p1 = RWObject.Create("Part") -- 创建零件
p1.CollisionEnter:Connect(EnterEvent) -- 碰撞进入事件注册

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建零件p1对象,给p1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
local function ExitEvent(res) -- 结束碰撞方法定义
	print("离开碰撞触发事件>>>>>".."谁离开了碰撞："..res.Name)
end
local p1 = RWObject.Create("Part") -- 创建零件
p1.Position = Vector3(0,10,0) -- 零件的位置赋值
p1.CollisionExit:Connect(ExitEvent) -- 结束碰撞方法注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给零件p1对象添加两个物理约束，并给p1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
local p3 = RWObject.Create("Part") -- 创建零件3
p1.Position = Vector3.New(0,10,0) -- 零件1的位置赋值
p2.Position = Vector3.New(0,15,0) -- 零件2的位置赋值
p3.Position = Vector3.New(0,20,0) -- 零件3的位置赋值
p1:CreateJoint(p2,JOINT_TYPE.SplitJoint) -- 使零件1与零件2以SplitJoint的方式约束
p1:CreateJoint(p3,JOINT_TYPE.SplitJoint) -- 使零件1与零件3以SplitJoint的方式约束
wait(2) -- 等待2
p1:DelAllJoint() -- 零件断开所有与他约束的零件
function JointBreakEvent() -- 删除约束的方法定义
	print("删除约束时触发")
end
p1.JointBreak:Connect(JointBreakEvent) -- 零件1删除约束的事件注册

-- 函数：UnionModle(partlist)
-- 函数说明：对多个零件进行合并操作，参与合并的零件保持不变，默认在(0,0,0)生成新的合并对象。
-- 参数：table{rwobject,rwobject}
-- 参数说明：零件对象
-- 返回值：rwobject
-- 返回值说明：返回合并零件对象
-- 代码说明：创建两个零件对象，并合并两个零件在(0,0,0)点生成新的合并对象newp1
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
p1.Position = Vector3.New(0,10,0) -- 零件1的位置赋值
p1.Name = "p1" -- 零件1的名字赋值为p1
p2.Position = Vector3.New(0,15,0) -- 零件2的位置赋值
p2.Name = "p2" -- 零件2的名字赋值为p2
local objlist = {p1,p2} -- 把零件1和零件2放入同一个表中
wait(1) -- 等待1
local newp1 = p1:UnionModle(objlist) -- 把表中的零件合并成新对象
print(newp1.Name) -- 输出新对象名字
-- 函数：ReverseModle(partlist)
-- 函数说明：对参数2的对象进行反向零件操作，并与参数1的对象进行合并操作。参与合并的零件保持不变，默认在(0,0,0)生成新的合并对象。
-- 参数：table{rwobject}
-- 参数说明：零件对象
-- 返回值：rwobject
-- 返回值说明：返回合并零件对象
-- 代码说明：创建三个零件对象，并对数组中的所有零件对象进行反向操作，用第一个零件对象去和数组中的所有零件对象有交集的地方进行切割
-- 代码示例：
local p1 = RWObject.Create("Part") -- 创建零件1
local p2 = RWObject.Create("Part") -- 创建零件2
local p3 = RWObject.Create("Part") -- 创建零件3
p1.Anchored = true -- 零件1的动力学赋值
p1.Position = Vector3.New(-5.2266,0.1251,3.3287) -- 零件1的位置赋值
p1.Name = "p1" --零件1的名字赋值为p1
p2.Anchored = true -- 零件2的动力学赋值
p2.Position = Vector3.New(-5.2031,0.2404,3.8696) -- 零件2的位置赋值
p2.Name = "p2" -- 零件2的名字赋值为p2
p3.Anchored = true -- 零件3的动力学赋值
p3.Position = Vector3.New(-5.2031,0.3200,4) -- 零件3的位置赋值
p3.Name = "p3" -- 零件3的名字赋值为p3
local objlist = {p2,p3} -- 将零件放入一个表中
wait(1) -- 等待1
local newp1 = p1:ReverseModle(objlist) -- 将零件1与表中零件合并
print(newp1.Name) -- 输出新零件的名字
newp1.Position = Vector3(10,0.125,10) -- 新零件的位置赋值
newp1.Color = Vector3(0,255,0) -- 新零件的颜色赋值

