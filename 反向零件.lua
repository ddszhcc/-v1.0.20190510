--备注:
--WorkSpace.a 、WorkSpcae.b、WorkSpcae.c 都代表一个手动创建的合并单位对象
--WorkSpace.d 代表一个手动创建的零件对象    
-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为反向零件n1对象创建一个物理约束
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的合并单位对象a
local n2 = WorkSpace.b -- 获取工作区下的合并单位对象b
n1.Position = Vector3(0,1,3) -- a的位置赋值
n2.Position = Vector3(0,1,6) -- b的位置赋值
local jointtype = n1:CreateJoint(n2,JOINT_TYPE.SplitJoint) -- 将a和b用SplitJoint方式约束起来

-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table+
-- 返回值说明：对象列表
-- 代码说明：取反向零件n1对象的所有约束对象
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的合并单位对象a
local n2 = WorkSpace.b -- 获取工作区下的合并单位对象b
local n3 = WorkSpace.c -- 获取工作区下的合并单位对象c
n1.Position = Vector3(0,1,6) -- a的位置赋值
n2.Position = Vector3(0,1,9) -- b的位置赋值
n3.Position = Vector3(0,1,12) -- c的位置赋值
n1:CreateJoint(n2,JOINT_TYPE.SplitJoint) -- 将a和b用SplitJoint方式约束起来
n1:CreateJoint(n3,JOINT_TYPE.SplitJoint) -- 将a和c用SplitJoint方式约束起来
wait(1) -- 等待1
local JointList = {} -- 建一个空表
JointList = n1:GetJointList() -- 获取a的约束的所有对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有的与a对象约束的名字
	print(tostring(v.Name))
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的合并单位对象a
local n2 = WorkSpace.b -- 获取工作区下的合并单位对象b
local n3 = WorkSpace.c -- 获取工作区下的合并单位对象c
n1.Position = Vector3(0,1,6) -- a的位置赋值
n2.Position = Vector3(0,1,9) -- b的位置赋值
n3.Position = Vector3(0,1,12) -- c的位置赋值
n1:CreateJoint(n2,JOINT_TYPE.SplitJoint) -- 将a和b用SplitJoint方式约束起来
n1:CreateJoint(n3,JOINT_TYPE.SplitJoint) -- 将a和c用SplitJoint方式约束起来
wait(1) -- 等待1
n1:DelAllJoint() -- 删除所有的与a约束的对象

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有反向零件对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取反向零件对象列表
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的合并单位对象a
local n2 = WorkSpace.b -- 获取工作区下的合并单位对象b
local n3 = WorkSpace.c -- 获取工作区下的合并单位对象c
n1.Position = Vector3(0,1,6) -- a的位置赋值
n1.Anchored = false -- 设置运动学
n2.Position = Vector3(0,1,9) -- b的位置赋值
n2.Anchored = false -- 设置运动学
n3.Position = Vector3(0,1,12) -- c的位置赋值
n3.Anchored = false -- 设置运动学
n1:CreateJoint(n2,JOINT_TYPE.SplitJoint) -- 将a和b用SplitJoint方式约束起来
n1:CreateJoint(n3,JOINT_TYPE.SplitJoint) -- 将a和c用SplitJoint方式约束起来
wait(1) -- 等待1
local JointList = {} -- 建一个空表
JointList = n1:GetJointPartList() -- 获取a里面的对象列表
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有的与a对象约束的名字
	print(tostring(v.Name))
end
-- 备注:打印的反向零件对象为空，应该打印每个反向零件对象

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个反向零件n1对象并获取它的质量
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的a
n1.Position = Vector3(0,10,0) --设置a的位置
n1.Name = "n1" --给a起名字叫n1
wait(1) -- 等待1
local MassValue = n1:GetMass() -- 获取a的质量值
print(tostring(MassValue)) -- 输出a的质量值

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：更改自定义零件n1对象的CanCollide属性，调用CanCollideWith函数观察返回参数是否为更改后的值false,不更改默认为true
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的a
n1.CanCollide = false -- a的可碰撞属性设置
n1.Position = Vector3(0,0.125,6) -- a的位置赋值
local value = n1:CanCollideWith() -- 获取a当前是否可以碰撞
print(tostring(value)) -- 输出是否可碰撞值

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建反向零件n1对象,给n1对象添加了一个碰撞事件，碰撞就会响应事件
-- 代码示例：
local function EnterEvent(res) -- 碰撞时触发事件定义
	print("进入碰撞触发事件>>>>>".."谁碰撞了我："..res.Name) 
end
local n1 = WorkSpace.a -- 获取工作区下的a
n1.Anchored = false -- a的运动学赋值
n1.Position = Vector3(0,10,0) -- a的位置赋值 
n1.CollisionEnter:Connect(EnterEvent) --a的碰撞进入事件注册

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建零件n1对象,给n1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
local function ExitEvent(res) --自身结束碰撞时触发事件定义
	print("离开碰撞触发事件>>>>>".."谁离开了碰撞："..res.Name)
end
local n1 = RWObject.Create("MeshPart") -- 创建一个自定义零件
n1.Anchored = false -- 运动学赋值
n1.Position = Vector3(0,10,0) -- 位置赋值
n1.CollisionExit:Connect(ExitEvent) -- 自身结束碰撞事件注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给零件n1对象添加两个物理约束，并给n1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local n1 = WorkSpace.a -- 获取工作区下的a
local n2 = WorkSpace.b -- 获取工作区下的b
local n3 = WorkSpace.c -- 获取工作区下的c
n1.Anchored = false -- a的运动学设置
n1.Position = Vector3.New(0,10,0) --a的位置设置
n2.Anchored = false  -- b的运动学设置
n2.Position = Vector3.New(0,15,0) --b的位置设置
n3.Anchored = false -- c的运动学设置
n3.Position = Vector3.New(0,20,0) --c的位置设置
n1:CreateJoint(n2,JOINT_TYPE.SplitJoint) -- 将a和b用SplitJoint方式约束起来
n1:CreateJoint(n3,JOINT_TYPE.SplitJoint) -- 将a和c用SplitJoint方式约束起来
wait(2) -- 等待2
n1:DelAllJoint() -- 解除所有与a的约束
function JointBreakEvent() --约束删除或受到断开力的事件定义
	print("删除约束时触发")
end
n1.JointBreak:Connect(JointBreakEvent) -- 约束删除或受到断开力的事件注册

-- 函数：UnionModle(partlist)
-- 函数说明：对多个反向零件进行合并操作，参与合并的零件保持不变，默认在(0,0,0)生成新的合并对象。
-- 参数：table{rwobject,rwobject}
-- 参数说明：零件对象
-- 返回值：rwobject
-- 返回值说明：返回合并零件对象
-- 代码说明：创建两个反向零件对象，并合并两个零件在(0,0,0)点生成新的合并对象newp1
-- 代码示例：
local p1 = WorkSpace.a -- 获取工作区下的a
local p2 = WorkSpace.b -- 获取工作区下的b
p1.Position = Vector3.New(0,10,0) -- a的位置赋值
p1.Name = "p1" -- a的名字赋值为p1
p2.Position = Vector3.New(0,15,0) -- b的位置赋值
p2.Name = "p2" -- b的名字赋值为p2
local objlist = {p1,p2} -- 把所有零件存在一个表中
wait(1) -- 等待1
local newp1 = p1:UnionModle(objlist) -- 对多个反向零件进行合并操作
print(newp1.Name) -- 输出新对象的名字