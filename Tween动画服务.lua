-- 函数：CreateTweener(Instance,tweenInfo,actionProperty)
-- 函数说明：创建Tween动画
-- 参数1：Instance
-- 参数1说明： 使用动画的对象
-- 参数1：tweenInfo
-- 参数1说明： 动画信息
-- 参数1：actionProperty
-- 参数1说明： 动画属性，位置，缩放，旋转，颜色等信息
-- 返回值：rwobject
-- 返回值说明：创建的Tweener对象
-- 代码说明:手动创建一个零件，并在客户端最先加载中编写客户端代码，调整Tweener的动画状态属性和目标位置的属性变换，并创建一个Tweener对象，创建完Tweener对象后播放动画
-- 代码示例： 
local __tweenInfo = TweenParmInfo.New();  --创建动画参数信息
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