-- 函数：GetPath(startPoint,terminalPoint)
-- 函数说明：计算路径坐标，输入起点和终点，返回一个记录路点坐标的路径对象
-- 参数1：Vector3
-- 参数1说明：startPoint 起点
-- 参数2：Vector3
-- 参数2说明：terminalPoint 坐标点
-- 返回值：Path
-- 返回值说明：创建出的Path对象
-- 代码说明：输入一个开始坐标还有一个结束坐标，返回一个记录点坐标的路径对象
-- 代码示例：
GameSetting.NavMeshOpen = true -- 路径导航开启赋值
wait(3) -- 等待3
local path = PathFindService:GetPath(Vector3(0,0,0),Vector3(50,0,50)); -- 根据起始点（0,0,0）和结束点（50,0,50）返回一个path对象
print(tostring(path.State)) -- 输出Path对象的状态
for __,v in ipairs(path.WayPoints) do -- 输出Path内的坐标点
	print(tostring(v))
end

-- 函数：CalculateNavMesh(agentRadius,agentHeight,agentSlope)
-- 函数说明：根据给定参数计算导航网格，Avatar:MoveTo需要先通过该函数建立导航网格方可正常使用
-- 参数1：number
-- 参数1说明：agentRadius 角色占的半径
-- 参数2：number
-- 参数2说明：agentHeight 角色占的高度
-- 参数3：number
-- 参数3说明：agentSlope 角色可行走的最大角度
-- 代码说明：根据给定参数计算导航网格并移动到相对位置
-- 代码示例：
GameSetting.NavMeshOpen = true -- 路径导航开启赋值
PathFindService:CalculateNavMesh(0.5,1.5,45) -- 导航网格建立
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") -- 根据类名来找到角色
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 根据角色PlayerId来找玩家
avatar:MoveTo(Vector3(0, 0, 3),WorkSpace.零件) -- 角色移动到工作区下零件的位置