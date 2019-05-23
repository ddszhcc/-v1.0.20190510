--备注:
--WorkSpace.a 、WorkSpcae.b、WorkSpcae.c 都代表一个手动创建的合并单位对象
--WorkSpace.d 代表一个手动创建的零件对象     

-- 函数：CreateJoint(target, jointType)
-- 函数说明：在自身与目标对象之间创建指定类型的约束
-- 参数1：string 
-- 参数1说明：目标对象
-- 参数2：枚举类型JointTypes  
-- 参数2说明：要创建的约束类型
-- 代码说明：为合并单位u1对象创建一个物理约束
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b
u1.Position = Vector3(0,1,3) -- a的位置赋值 
u2.Position = Vector3(0,1,6) -- b的位置赋值
local jointtype = u1:CreateJoint(u2,JOINT_TYPE.SplitJoint) -- 为合并单位a与合并单位b以SplitJoint方式创建一个物理约束

-- 函数：GetJointList()
-- 函数说明：获取自身的所有约束，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：取合并单位u1对象的所有约束对象
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b
local u3 = WorkSpace.c -- 获取工作去下的c
u1.Position = Vector3(0,1,6) -- a的位置赋值
u2.Position = Vector3(0,1,9) -- b的位置赋值
u3.Position = Vector3(0,1,12) -- c的位置赋值
u1:CreateJoint(u2,JOINT_TYPE.SplitJoint) -- 将a与b用SplitJoint方式创建一个物理约束
u1:CreateJoint(u3,JOINT_TYPE.SplitJoint) -- 将a与c用SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建一个空表
JointList = u1:GetJointList() -- 获取a连接的所有对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与a连接的对象的名字
	print(tostring(v.Name))
end

-- 函数：DelAllJoint()
-- 函数说明：删除自身的所有约束
-- 代码说明：先给自身添加两个约束，随后删除自身的所有约束
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b
local u3 = WorkSpace.c -- 获取工作去下的c
u1.Position = Vector3(0,1,6) -- a的位置赋值
u2.Position = Vector3(0,1,9) -- b的位置赋值
u3.Position = Vector3(0,1,12) -- c的位置赋值
u1:CreateJoint(u2,JOINT_TYPE.SplitJoint) -- 将a与b用SplitJoint方式创建一个物理约束
u1:CreateJoint(u3,JOINT_TYPE.SplitJoint) -- 将a与c用SplitJoint方式创建一个物理约束
wait(1) -- 等待1
u1:DelAllJoint() --a解除所有的与a物理约束的对象

<<<<<有问题>>>>>
-- 函数：GetJointPartList()
-- 函数说明：获取与自身通过约束相连的所有驾驶位对象，返回一个列表
-- 返回值：table
-- 返回值说明：对象列表
-- 代码说明：先给自身添加两个约束,随后获取合并单位对象列表
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b
local u3 = WorkSpace.c -- 获取工作去下的c
u1.Position = Vector3(0,1,6) -- a的位置赋值
u1.Anchored = false -- a的运动学赋值
u2.Position = Vector3(0,1,9) -- b的位置赋值
u2.Anchored = false -- b的运动学赋值
u3.Position = Vector3(0,1,12) -- c的位置赋值
u3.Anchored = false -- c的运动学赋值
u1:CreateJoint(u2,JOINT_TYPE.SplitJoint) -- 将a与b用SplitJoint方式创建一个物理约束
u1:CreateJoint(u3,JOINT_TYPE.SplitJoint) -- 将a与c用SplitJoint方式创建一个物理约束
wait(1) -- 等待1
local JointList = {} -- 创建空表
JointList = u1:GetJointPartList() --获取所有与a约束的对象
wait(1) -- 等待1
for k,v in pairs(JointList) do -- 输出所有与a约束的对象的名字
	print(tostring(v.Name))
end
-- 备注:打印的合并单位对象为空,应该打印每个合并单位对象

-- 函数：GetMass()
-- 函数说明：获取自身的质量
-- 返回值：float
-- 返回值说明：自身质量的值
-- 代码说明：创建一个合并单位u1对象并获取它的质量
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
u1.Position = Vector3(0,10,0) -- a的位置赋值
u1.Name = "u1" -- a的名字赋值
wait(1) -- 等待1
local MassValue = u1:GetMass() -- 获取a的质量
print(tostring(MassValue)) -- 输出a的质量

-- 函数：CanCollideWith()
-- 函数说明：返回自身是否参与碰撞
-- 返回值：bool
-- 返回值说明：是否可以碰撞
-- 代码说明：更改自定义零件u1对象的CanCollide属性，调用CanCollideWith函数观察返回参数是否为更改后的值false,不更改默认为true
-- 代码示例：
local u1 = WorkSpace.a --获取工作区下的a
u1.CanCollide = false -- a的可碰撞属性赋值
u1.Position = Vector3(0,0.125,6) -- a的位置赋值
local value = u1:CanCollideWith() -- 获取a是否可碰撞
print(tostring(value)) -- 输出a是否可碰撞

-- 函数：CanTriggerWith()
-- 备注：暂不可用

-- 事件：CollisionEnter()
-- 事件说明：自身进入碰撞时触发
-- 代码说明：创建合并单位u1对象,给u1对象添加了一个碰撞事件，碰撞就会响应事件
-- 代码示例：
local function EnterEvent(res) -- 进入碰撞事件定义
	print("进入碰撞触发事件>>>>>".."谁碰撞了我："..res.Name)
end
local u1 = WorkSpace.a -- 获取工作区下的a
u1.Anchored = false -- a的运动学赋值
u1.Position = Vector3(0,10,0) -- a的位置赋值
u1.CollisionEnter:Connect(EnterEvent) -- a的进入碰撞事件注册

-- 事件：CollisionExit()
-- 事件说明：自身结束碰撞时触发
-- 代码说明：创建合并单位m1对象,给m1添加一个离开碰撞的事件，碰撞离开就会响应事件
-- 代码示例：
local function ExitEvent(res) -- 结束碰撞时触发的事件定义
	print("离开碰撞触发事件>>>>>".."谁离开了碰撞："..res.Name)
end
local u1 = RWObject.Create("MeshPart") -- 创建一个自定义零件
u1.Anchored = false -- 运动学赋值
u1.Position = Vector3(0,10,0) -- 位置赋值
u1.CollisionExit:Connect(ExitEvent) -- 结束碰撞时触发的事件注册

-- 事件：JointBreak()
-- 事件说明：约束删除或受到断开力的时候触发
-- 代码说明：给合并单位u1对象添加两个物理约束，并给u1添加一个删除约束时响应的事件,然后删除约束看是否响应事件
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b
local u3 = WorkSpace.c -- 获取工作区下的c
u1.Anchored = false -- a的运动学赋值
u1.Position = Vector3.New(0,10,0) -- a的位置赋值
u2.Anchored = false -- b的运动学赋值
u2.Position = Vector3.New(0,15,0) -- b的位置赋值
u3.Anchored = false ---c的运动学赋值
u3.Position = Vector3.New(0,20,0) -- c的位置赋值
u1:CreateJoint(u2,JOINT_TYPE.SplitJoint) -- 将a与b用SplitJoint方式创建一个物理约束
u1:CreateJoint(u3,JOINT_TYPE.SplitJoint) -- 将a与c用SplitJoint方式创建一个物理约束
wait(2) -- 等待2
u1:DelAllJoint() -- 解除所有与a的约束对象
function JointBreakEvent() -- 解除约束的方法定义
	print("删除约束时触发")
end
u1.JointBreak:Connect(JointBreakEvent) -- a注册解除约束的方法

-- 函数：UnionModle(partlist)
-- 函数说明：对多个合并单位进行合并操作，参与合并的零件保持不变，默认在(0,0,0)生成新的合并对象。
-- 参数：table{rwobject,rwobject}
-- 参数说明：零件对象
-- 返回值：rwobject
-- 返回值说明：返回合并零件对象
-- 代码说明：创建两个合并单位对象，并合并两个合并单位在(0,0,0)点生成新的合并对象newp1
-- 代码示例：
local fanxiangPart = WorkSpace.a -- 获取工作区下的a
local Part = WorkSpace.d -- 获取工作区下的d
fanxiangPart.Position = Vector3.New(0,10,0) --a的位置赋值
Part.Position = Vector3.New(0,15,0) -- d的位置赋值
local objlist = {fanxiangPart,Part} -- 将a,d放一个表中
wait(1) -- 等待1
local newp1 = fanxiangPart:UnionModle(objlist) -- 把对象表里的单位合并起来
print(newp1.Name) -- 输出新对象的名字

-- 函数：ReverseModle(partlist)
-- 函数说明：对参数2的对象进行反向零件操作，并与参数1的对象进行合并操作。参与合并的零件保持不变，默认在(0,0,0)生成新的合并对象。
-- 参数：table{rwobject}
-- 参数说明：零件对象
-- 返回值：rwobject
-- 返回值说明：返回合并零件对象
-- 代码说明：创建三个合并单位对象，并对数组中的所有合并单位进行反向操作，用零件对象去和数组中的所有合并单位对象有交集的地方进行切割
-- 代码示例：
local u1 = WorkSpace.a -- 获取工作区下的a
local u2 = WorkSpace.b -- 获取工作区下的b 
local u3 = WorkSpace.c -- 获取工作区下的c
u1.Anchored = true -- a的运动学赋值
u1.Position = Vector3.New(-5.2266,0.1251,3.3287) -- a的位置赋值
u1.Name = "u1" -- a的名字设置为u1
u2.Anchored = true -- b的运动学赋值
u2.Position = Vector3.New(-5.2031,0.2404,3.8696) -- b的位置赋值
u2.Name = "u2" -- b的名字设置为u2
u3.Anchored = true -- c的运动学赋值
u3.Position = Vector3.New(-5.2031,0.3200,4) -- c的位置赋值
u3.Name = "u3" -- c的名字设置为u3
local objlist = {u2,u3} -- 将u2,u3放入用一个表中
wait(1) -- 等待1
local newp1 = u1:ReverseModle(objlist) -- 将u1与u2,u3合并在一个生成一个新对象
newp1.Position = Vector3(10,0.125,10) -- 新对象的位置赋值
newp1.Color = Vector3(0,255,0) -- 新对象的颜色设置
print(newp1.Name) -- 输出新对象的名字




