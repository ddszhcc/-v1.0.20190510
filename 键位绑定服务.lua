-- 函数：BindInput(actionName,functionName,createTouchButton,...)
-- 函数说明：将一个函数与用户输入绑定，可以用来自定义按键触发的游戏逻辑，通过此方法创建的BindInputInfo的优先级为-1
-- 参数1：string
-- 参数1说明： actionName 操作名称；
-- 参数2：string
-- 参数2说明：functionToBind 绑定的方法名
-- 参数3：bool
-- 参数3说明： createTouchButton  是否创建Touch按钮（暂不可用，默认填false）
-- 参数4：可变参数... 
-- 参数4说明：inputTypes  输入按键的集合
-- 代码说明：创建一个函数，将函数还有键位都注册到该方法中，然后根据自己设定的按钮按下键位，观察是否打印
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键Q,E,R集合绑定在test

-- 函数：BindInputByPriority(actionName,functionName,createTouchButton,priorityLevel,...)
-- 函数说明：将一个函数与用户输入绑定，可以指定优先级，通过此方法设定的优先级最小为0，当同一个BindInput被触发时，优先级大的先被触发
-- 参数1：string
-- 参数1说明：actionName 操作名称
-- 参数2：string
-- 参数2说明：functionToBind 绑定的方法名
-- 参数3：bool
-- 参数3说明：createTouchButton  是否创建Touch按钮（暂不可用，默认填false）
-- 参数4：int
-- 参数4说明：priorityLevel   优先级 （大于0）
-- 参数5：可变参数... 
-- 参数5说明：inputTypes  输入按键的集合
-- 代码说明：创建一个函数，将函数还有键位都注册到该方法中，设置优先级为1，然后根据自己设定的按钮按下键位，观察是否先打印优先级的方法
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
function test1() -- 测试函数1定义
	print("test***")
	--ContextActionService.RemoveBindInput("first")
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键Q,E,R集合绑定在test
ContextActionService.BindInputByPriority("secend",test1,false,1,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.T) -- 操作名称为secend,优先级为1，将按键Q,T集合绑定在test1

-- 函数：GetAllBindInputInfo()
-- 函数说明：获得所有绑定信息，作为一个列表并返回
-- 返回值：table
-- 返回值说明：{返回值1：keyCode 绑定的输入按键；返回值2：priorityLevel BindInputInfo的优先级；返回值3 actionName BindInputInfo的名称；返回值4 functionName 绑定触发的函数；返回值5 createTouchButton 是否在移动端创建虚拟按键}
-- 代码说明：获得当前注册到该函数中的所有绑定的输入按键，观察是否和返回的打印列表中的信息相符
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
function test1() -- 测试函数1定义
	print("test***")
	--ContextActionService.RemoveBindInput("first")
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键Q,E,R集合绑定在test
ContextActionService.BindInputByPriority("secend",test1,false,1,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.T) -- 操作名称为secend,优先级为1，将按键Q,T集合绑定在test1
wait(2) -- 等待2
for _,v in pairs(ContextActionService.GetAllBindInputInfo()) do -- 输出所有的绑定信息
	print(tostring(v.actionName).." "..tostring(v.keyCode).." "..tostring(v.priorityLevel).." "..tostring(v.functionName)
	.." "..tostring(v.createTouchButton))
end

-- 函数：GetBindInputInfo(actionName)
-- 函数说明：获得指定actionName的绑定信息，作为列表返回
-- 参数：string
-- 参数说明：actionName 绑定信息名称
-- 返回值：table
-- 返回值说明：{返回值1：keyCode 绑定的输入按键；返回值2：priorityLevel BindInputInfo的优先级；返回值3 actionName BindInputInfo的名称；返回值4 functionName 绑定触发的函数；返回值5 createTouchButton 是否在移动端创建虚拟按键}
-- 代码说明：获得当前注册到该函数中的指定绑定的列表信息
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
function test1() -- 测试函数1定义
	print("test***")
	--ContextActionService.RemoveBindInput("first")
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键Q,E,R集合绑定在test
ContextActionService.BindInputByPriority("secend",test1,false,1,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.T) -- 操作名称为secend,优先级为1，将按键Q,T集合绑定在test1
wait(2) -- 等待2
for _,v in pairs(ContextActionService.GetBindInputInfo("secend")) do --输出secend的绑定信息
	print(tostring(v.actionName).." "..tostring(v.keyCode).." "..tostring(v.priorityLevel).." "..tostring(v.functionName)
	.." "..tostring(v.createTouchButton))
end

-- 函数：RemoveBindInput(actionName)
-- 函数说明：将指定actionName的绑定信息删除
-- 参数：string
-- 参数说明：actionName 绑定信息名称
-- 返回值：table
-- 返回值说明：{返回值1：keyCode 绑定的输入按键；返回值2：priorityLevel BindInputInfo的优先级；返回值3 actionName BindInputInfo的名称；返回值4 functionName 绑定触发的函数；返回值5 createTouchButton 是否在移动端创建虚拟按键}
-- 代码说明：按Q键删除first的绑定信息
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
function test1() -- 测试函数1定义
	print("test***")
	ContextActionService.RemoveBindInput("first") -- 将first的绑定信息删除
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.W,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键W,E,R集合绑定在test
ContextActionService.BindInputByPriority("secend",test1,false,1,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.T) -- 操作名称为secend,优先级为1，将按键Q,T集合绑定在test1

-- 函数：RemoveAllBindInputs()
-- 函数说明：删除所有绑定信息
-- 返回值：table
-- 返回值说明：{返回值1：keyCode 绑定的输入按键；返回值2：priorityLevel BindInputInfo的优先级；返回值3 actionName BindInputInfo的名称；返回值4 functionName 绑定触发的函数；返回值5 createTouchButton 是否在移动端创建虚拟按键}
-- 代码说明：按下Q键删除所有绑定信息
-- 代码示例：
wait(2) -- 等待2
function test() -- 测试函数定义
	print("testSuccess")
end
function test1() -- 测试函数1定义
	print("test***")
	ContextActionService.RemoveAllBindInputs() -- 删除所有绑定信息
end
ContextActionService.BindInput("first",test,false,UnityEngine.KeyCode.W,UnityEngine.KeyCode.E,UnityEngine.KeyCode.R) -- 操作名称为first,将按键W,E,R集合绑定在test
ContextActionService.BindInputByPriority("secend",test1,false,1,UnityEngine.KeyCode.Q,UnityEngine.KeyCode.T) -- 操作名称为secend,优先级为1，将按键Q,T集合绑定在test1

-- 事件：ToolEquippedByLocal()
-- 事件说明：当前玩家装备工具时激发
-- 代码说明：
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的123角色
local toolcrt = RWObject.Create("Tool") -- 创建工具
ContextActionService.ToolEquippedByLocal:Connect(function(v) -- 当前玩家装备工具事件注册
	print(tostring(v.Name))
end)
wait(1) -- 等待1
Person:EquipTool(toolcrt) -- 角色装备工具

-- 事件：ToolUnequippedByLocal()
-- 事件说明：当前玩家卸下工具时激发
-- 代码说明：
-- 代码示例：
wait(1) -- 等待1
local Person = WorkSpace[123] -- 获取工作区下的角色
local toolcrt = RWObject.Create("Tool") -- 创建工具
ContextActionService.ToolUnequippedByLocal:Connect(function(v) -- 当前玩家卸下工具事件注册
	print(tostring(v.Name))
end)
wait(1) -- 等待1
Person:EquipTool(toolcrt) -- 角色装备工具
wait(1) -- 等待1
Person:UnEquipTool() -- 角色卸下工具