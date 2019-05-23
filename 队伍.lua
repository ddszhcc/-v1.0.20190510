<<<<<有问题>>>>>
-- 函数：AddPlayer(PlayerId)
-- 函数说明：添加给定的玩家
-- 参数1：int
-- 参数1说明：int PlayerId 玩家角色的唯一ID
-- 代码说明：手动创建一个队伍，让avatar添加到队伍中
-- 代码示例：
wait(2) -- 等待2
local avatar = WorkSpace:GetChildByClassName("Avatar") --通过Avatar类名来找Avatar对象
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 通过Avatar的PlayerId 来找Player

local teams = Team:GetTeams() -- 获取所有队伍
local team1 = Team:GetTeamForId(1) -- 获取id为1的队伍

teams[1]:AddPlayer(0) -- 队伍1添加玩家id为0的玩家
print("player.Team===="..tostring(player.Team)) -- 输出玩家的队伍
print("player.TeamSideColor===="..tostring(player.TeamSideColor)) --输出玩家队伍的颜色
-- 备注：添加玩家后没有显示队伍信息

-- 函数：RemovePlayer(PlayerId)
-- 函数说明：添加给定的玩家
-- 参数1：int
-- 参数1说明：int PlayerId 玩家角色的唯一ID
-- 代码说明：手动创建一个队伍，让avatar添加到队伍中,2秒后使avatar离开队伍
-- 代码示例：
wait(2) -- 等外2
local avatar = WorkSpace:GetChildByClassName("Avatar") --通过Avatar类名来找Avatar对象
local player = Players:GetPlayerByUserId(avatar.PlayerId) -- 通过Avatar的PlayerId 来找Player
local teams = Team:GetTeams() -- 获取所有队伍
local team1 = Team:GetTeamForId(1) -- 获取id为1的队伍
dump(teams[1].Players) -- 打印队伍1的所有玩家
teams[1]:AddPlayer(0) -- 队伍1添加玩家id为0的玩家
dump(teams[1].Players) -- 打印队伍1的所有玩家
wait(1) -- 等待1
teams[1]:RemovePlayer(0) -- 队伍1移除玩家id为0的玩家
wait(1) -- 等待1
dump(teams[1].Players) -- 打印出队伍1的所有玩家
