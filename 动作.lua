-- 函数：PlayAnimation()
-- 函数说明：播放当前动画
-- 代码说明：创建一个角色播放攀爬动画
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) --Avatar位置赋值
local climb = player.动作.攀爬 --获取攀爬动作的位置
wait(0.5) --等待0.5
climb.LocalClipId = "Climb" --动作赋值
climb.Loop = true  --动作循环打开
climb:PlayAnimation() --动作播放
-- 函数：StopAnimation()
-- 函数说明：停止播放当前动画
-- 代码说明：创建一个角色播放攀爬动画，2秒后停止动画
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) --Avatar位置赋值
local climb = player.动作.攀爬 --获取攀爬动作的位置
wait(0.5) -- 等待0.5
climb.LocalClipId = "Climb" --动作赋值
climb.Loop = true -- 动作循环打开
climb:PlayAnimation() -- 动作播放
wait(2) -- 等待2
climb:StopAnimation() -- 停止播放

-- 事件：AnimationLoop()
-- 事件说明：动画循环播放完毕，下一次循环开始前，触发此事件
-- 代码说明：创建一个角色播放循环起跳动画，每次循环前会触发该事件
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) --Avatar位置赋值
local climb = player.动作.起跳 --获取起跳动作的位置
climb.AnimationLoop:Connect(function() -- 动作注册触发循环开始前事件
	print("触发循环开始前事件")
end)
wait(0.5) -- 等待0.5
climb.LocalClipId = "Jump" -- 动作赋值
climb.Loop = true -- 动作循环打开
climb:PlayAnimation() -- 动作播放 

<<<<<有问题>>>>>
-- 事件：AnimationComplete()
-- 事件说明：动画播放完毕后，触发此事件
-- 代码说明：创建一个角色播放攀爬动作，攀爬动画播放完毕后触发事件
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) --Avatar位置赋值
local climb = player.动作.攀爬 --获取攀爬动作的位置
climb.AnimationComplete:Connect(function() -- 动作注册触发动画播放完毕事件
	print("触发动画播放完毕事件")
end)
wait(1) -- 等待1
climb.LocalClipId = "Climb" --动画赋值
climb:PlayAnimation() -- 动作播放
-- 备注：攀爬动画播放完毕后，事件触发三次

<<<<<有问题>>>>>
-- 事件：onAvatarAnimationPlayed()
-- 事件说明：角色动画播放时，触发此事件
-- 代码说明：创建一个角色播放驾驶动作，驾驶动画播放完毕后触发事件
-- 代码示例：
local player = RWObject.Create("Avatar") -- 创建角色
player.Position = Vector3(0,0.125,3) --Avatar位置赋值
local climb = player.动作.驾驶 --获取驾驶动作的位置
climb.onAvatarAnimationPlayed:Connect(function()  -- 动作注册触发动画播放时事件
	print("触发动画播放时事件")
end)
wait(1) -- 等待1
climb.LocalClipId = "Drive" -- 动作赋值
climb.Loop = true -- 动作循环打开
climb:PlayAnimation() -- 动作播放
-- 备注：驾驶动画播放完毕后，事件触发三次