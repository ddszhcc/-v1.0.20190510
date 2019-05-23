-- 函数：TweenPlay()
-- 函数说明：播放Tween动画
-- 代码说明:手动创建一个零件，并在客户端最先加载中编写客户端代码，调整Tweener的动画状态属性和目标位置的属性变换，并创建一个Tweener对象，创建完Tweener对象后播放动画
-- 代码示例： 
local __tweenInfo = TweenParmInfo.New(); --创建动画参数信息
__tweenInfo.Duration = 5; -- 持续时间赋值
__tweenInfo.Ease = EaseType.Linear; --EaseType 类型为线型
__tweenInfo.Loop = 0;  --循环赋值
__tweenInfo.LoopType = EaseLoopType.Restart; --EaseLoopType 类型为重新启动
__tweenInfo.Reverses = false; -- 是否反向赋值
__tweenInfo.DelayTime = 0; --延时时间

local action ={}; -- 创建一个行动表
action.Position = Vector3(3,4,5) -- 位置赋值
action.Scale = Vector3(2,2,2); -- 缩放比例赋值
action.Rotation = Vector3(45,45,45) -- 旋转赋值
action.Color = Vector3(0.5,0.8,0.7) -- 颜色赋值
action.Transparency = 0.5 -- 透明度赋值

local __Tweener = TweenService:CreateTweener(WorkSpace.零件,__tweenInfo,action) -- 创建一个动画，采用以上定义的参数信息给工作区下的零件这个物体

__Tweener:TweenPlay(); --开始 

-- 函数：TweenPause()
-- 函数说明：暂停Tween动画
-- 代码说明：手动创建一个零件，并在客户端最先加载中编写客户端代码，调整Tweener的动画状态属性和目标位置的属性变换，并创建一个Tweener对象，创建完Tweener对象后播放动画，1秒后暂停动画
-- 代码示例： 
local __tweenInfo = TweenParmInfo.New(); --创建动画参数信息
__tweenInfo.Duration = 5; -- 持续时间赋值
__tweenInfo.Ease = EaseType.Linear; --EaseType 类型为线型
__tweenInfo.Loop = 0; --循环赋值
__tweenInfo.LoopType = EaseLoopType.Restart; --EaseLoopType 类型为重新启动
__tweenInfo.Reverses = false; -- 是否反向赋值
__tweenInfo.DelayTime = 0; --延时时间 

local action ={}; -- 创建一个行动表 
action.Position = Vector3(3,4,5) -- 位置赋值 
action.Scale = Vector3(2,2,2); -- 缩放比例赋值 
action.Rotation = Vector3(45,45,45) -- 旋转赋值 
action.Color = Vector3(0.5,0.8,0.7) -- 颜色赋值 
action.Transparency = 0.5 -- 透明度赋值 

local __Tweener = TweenService:CreateTweener(WorkSpace.零件,__tweenInfo,action) -- 创建一个动画，采用以上定义的参数信息给工作区下的零件这个物体

__Tweener:TweenPlay(); --开始 
wait(1) -- 等待1
__Tweener:TweenPause() --暂停

-- 函数：Restart()
-- 函数说明：重新播放Tween动画
-- 代码说明：手动创建一个零件，并在客户端最先加载中编写客户端代码，调整Tweener的动画状态属性和目标位置的属性变换，并创建一个Tweener对象，创建完Tweener对象后播放动画，1秒后重新播放动画
-- 代码示例：
local __tweenInfo = TweenParmInfo.New(); --创建动画参数信息 
__tweenInfo.Duration = 5; -- 持续时间赋值
__tweenInfo.Ease = EaseType.Linear; --EaseType 类型为线型 
__tweenInfo.Loop = 0; --循环赋值
__tweenInfo.LoopType = EaseLoopType.Restart; --EaseLoopType 类型为重新启动
__tweenInfo.Reverses = false; -- 是否反向赋值
__tweenInfo.DelayTime = 0; --延时时间

local action ={}; -- 创建一个行动表
action.Position = Vector3(3,4,5) -- 位置赋值 
action.Scale = Vector3(2,2,2); -- 缩放比例赋值 
action.Rotation = Vector3(45,45,45) -- 旋转赋值
action.Color = Vector3(0.5,0.8,0.7) -- 颜色赋值 
action.Transparency = 0.5 -- 透明度赋值

local __Tweener = TweenService:CreateTweener(WorkSpace.零件,__tweenInfo,action) -- 创建一个动画，采用以上定义的参数信息给工作区下的零件这个物体

__Tweener:TweenPlay(); --开始 
wait(2) -- 等待2
__Tweener:Restart() --重新播放

-- 事件：TweenOncomplate()
-- 事件说明：在Tween动画播放完成的时候触发事件
-- 代码说明：手动创建一个零件，并在客户端最先加载中编写客户端代码，调整Tweener的动画状态属性和目标位置的属性变换，并创建一个Tweener对象，创建完Tweener对象后播放动画，播放完成后观察是否触发事件
-- 代码示例：
local __tweenInfo = TweenParmInfo.New(); --创建动画参数信息 
__tweenInfo.Duration = 5; -- 持续时间赋值 
__tweenInfo.Ease = EaseType.Linear; --EaseType 类型为线型 
__tweenInfo.Loop = 0; --循环赋值 
__tweenInfo.LoopType = EaseLoopType.Restart; --EaseLoopType 类型为重新启动 
__tweenInfo.Reverses = false; -- 是否反向赋值 
__tweenInfo.DelayTime = 0; --延时时间

local action ={}; -- 创建一个行动表
action.Position = Vector3(3,4,5) -- 位置赋值
action.Scale = Vector3(2,2,2); -- 缩放比例赋值
action.Rotation = Vector3(45,45,45) -- 旋转赋值 
action.Color = Vector3(0.5,0.8,0.7) -- 颜色赋值
action.Transparency = 0.5 -- 透明度赋值

local __Tweener = TweenService:CreateTweener(WorkSpace.零件,__tweenInfo,action) -- 创建一个动画，采用以上定义的参数信息给工作区下的零件这个物体
wait(1) -- 等待1
__Tweener:TweenOncomplate(function () --动画播放结束事件注册
	print("触发结束事件") 
end)

__Tweener:TweenPlay(); --开始 