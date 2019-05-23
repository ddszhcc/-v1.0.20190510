-- 函数：IsClientType()
-- 函数说明：查询是否在客户端上运行脚本
-- 代码说明：打印bool值，true为服务器脚本，false为客户端脚本
-- 代码示例：
wait(2)
print("查询是否在客户端上运行脚本：" .. tostring(GameRun:IsClientType()))

-- 函数：IsEditStatus()
-- 函数说明：查询是否在编辑状态下运行
-- 代码说明：打印bool值，true为在编辑状态下运行，false为不在编辑状态运行
-- 代码示例：
wait(2)
print("查询是否在编译器上运行脚本：" .. tostring(GameRun:IsEditStatus()))

-- 函数：IsRunningStatus()
-- 函数说明：查询是否在游戏环境下运行
-- 代码说明：打印bool值，true为当前游戏正在运行，false为当前游戏没有运行
-- 代码示例：
wait(2)
print("查询游戏当前是否正在运行：" .. tostring(GameRun:IsRunningStatus()))

-- 函数：IsServerType()
-- 函数说明：查询是否在服务器运行脚本
-- 返回值：bool
-- 返回值说明：运行环境是否是服务器
-- 代码说明：打印bool值，true为当前游戏运行环境是服务器，false为当前游戏运行环境是客户端
-- 代码示例：
wait(2)
print("查询服务器上是否正在运行脚本：" .. tostring(GameRun:IsServerType()))

-- 函数：IsStudioType()
-- 函数说明：查询是否在编辑器运行脚本
-- 返回值：bool
-- 返回值说明：运行环境是否是编辑器
-- 代码说明：打印bool值，true为当前游戏运行环境是服务器，false为当前游戏运行环境是客户端
-- 代码示例：
wait(2)
print("查询是否在roblox studio中运行脚本：" .. tostring(GameRun:IsStudioType()))

-- 函数：IsStudioType()
-- 函数说明：查询是否在编辑器运行脚本
-- 返回值：bool
-- 返回值说明：运行环境是否是编辑器
-- 代码说明：打印bool值，true为当前游戏运行环境是服务器，false为当前游戏运行环境是客户端
-- 代码示例：
wait(2)
print("查询运行环境是否在编译器" .. tostring(GameRun:IsStudioType()))

-- 函数：Update()
-- 函数说明：每帧运行一次Update中的函数
-- 代码说明：每帧打印一次"111"
-- 代码示例：
GameRun.Update:Connect(function()
	print("111")
end)
