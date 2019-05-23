-- 函数：FireClient(uId, event, ...)
-- 函数说明：客户端调用事件
-- 参数1：int
-- 参数1说明：uId 用户的playerid
-- 参数2：function
-- 参数2说明：event 要注册的函数
-- 参数3：可变参数
-- 参数3说明：传递event所用参数
-- 代码说明：手动创建一个零件，在角色Avatar上注册一个碰撞事件，碰撞后注册客户端事件，然后在客户端脚本中调用，观察是否触发客户端事件
-- 代码示例：
服务端脚本:
local function EnterCallBack(res1, res2) -- 进入碰撞方法定义
    if res1:IsClass("Avatar") then -- 判断类是否是角色
        MessageEvent.FireClient(res1.PlayerId, "EventStart") -- 向客户端角色调用EventStart
    end
end
script.Parent.CollisionEnter:Connect(EnterCallBack) -- 当前脚本的父级注册该碰撞事件
客户端脚本:
MessageEvent.ClientEventCallBack("EventStart"):Connect(function() -- EventStatrt事件添加方法
	print("1111111111111111")
end)

-- 函数：FireAllClient(event, ...)
-- 函数说明：所有客户端调用事件
-- 参数1：function
-- 参数1说明： event 要注册的函数
-- 参数2：可变参数
-- 参数2说明：传递event所用参数
-- 代码说明：手动创建一个零件，在角色Avatar上注册一个碰撞事件，碰撞后注册客户端事件，然后在客户端脚本中调用，观察是否所有玩家都触发客户端事件
-- 代码示例：
服务端脚本:
local function EnterCallBack(res1, res2)  -- 进入碰撞方法定义
    if res1:IsClass("Avatar") then -- 判断类是否是角色
        MessageEvent.FireClient(res1.PlayerId, "EventStart") -- 向客户端角色调用EventStart
    end
end
script.Parent.CollisionEnter:Connect(EnterCallBack) -- 当前脚本的父级注册该碰撞事件
客户端脚本:
MessageEvent.ClientEventCallBack("EventStart"):Connect(function() -- EventStatrt事件添加方法
	print("1111111111111111")
end)
-- 备注：目前多人无法测试，等多人功能可以用使在测

-- 函数：FireServer(event, ...)
-- 函数说明：所有客户端调用事件
-- 参数1：function
-- 参数1说明： event 要注册的函数
-- 参数2：可变参数
-- 参数2说明：传递event所用参数
-- 代码说明：手动创建一个零件，在角色Avatar上注册一个碰撞事件，碰撞后注册服务端事件，然后在服务端脚本中调用，观察是否触发服务端事件
-- 代码示例：
服务端脚本:
local function EnterCallBack(res1, res2)  -- 进入碰撞方法定义
    if res1:IsClass("Avatar") then -- 判断类是否是角色
        MessageEvent.FireServer("EventStart") -- 向服务器调用EventStart
    end
end
script.Parent.CollisionEnter:Connect(EnterCallBack) -- 当前脚本的父级注册该碰撞事件
客户端脚本：
MessageEvent.ServerEventCallBack("EventStart"):Connect(function() -- EventStatrt事件添加方法
	print("222222222222")
end)

-- 函数：ServerEventCallBack(event, ...)
-- 函数说明：服务器事件回调
-- 参数1：function
-- 参数1说明： event 要注册的函数
-- 参数2：可变参数
-- 参数2说明：传递event所用参数
-- 代码说明：手动创建一个零件，在角色Avatar上注册一个碰撞事件，碰撞后注册服务端事件，然后在服务端脚本中调用，观察是否触发服务端事件
-- 代码示例：
服务端脚本:
local function EnterCallBack(res1, res2)
    if res1:IsClass("Avatar") then
        MessageEvent.FireServer("EventStart",111)
    end
end
script.Parent.CollisionEnter:Connect(EnterCallBack)
服务端脚本：
MessageEvent.ServerEventCallBack("EventStart"):Connect(function(res)
	print("222222222222"..res)
end)
-- 函数：FireLocalEvent(event, ...)
-- 函数说明：在本地发送事件
-- 参数1：function
-- 参数1说明： event 要注册的函数
-- 参数2：可变参数
-- 参数2说明：传递event所用参数
-- 代码说明：在一开始执行text函数，将方法注册到事件中，然后在客户端本地调用，观察是否触发事件
-- 代码示例：
客户端脚本:
function EventStart()
	print("本地事件爆炸输出")
end
MessageEvent.ClientEventCallBack("EventStart"):Connect(EventStart)

local function text()
	MessageEvent.FireLocalEvent("EventStart")
end

coroutine.start(text)