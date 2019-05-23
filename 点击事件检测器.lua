-- 函数：TriggerMouseClick(rwobject)
-- 函数说明：检测到鼠标左键点击时，触发此事件
-- 参数：rwobject
-- 参数说明：Clicktrigger对象
-- 代码说明：创建一个零件和一个点击触发器，将点击事件器归入零件的子物体，鼠标左键点击零件，观察是否触发事件
-- 代码示例：
local part = RWObject.Create("Part") -- 创建零件
local click = RWObject.Create("ClickTrigger") -- 创建点击触发器
click.Parent = part -- ClickTrigger的父级设置为Part
script.Parent = part -- 当前脚本的父级设置为Part
part.Position = Vector3(0,0.125,3) -- Part的位置赋值
click.Position = Vector3(0,0.125,5) -- ClickTrigger的位置赋值
click.MaxClickDistance = 5000 -- ClickTrigger的最大点击距离赋值
click.MouseCursorImage = "rwid://T18RdTBybT1RCxfErK" --鼠标光标图片赋值

click.TriggerMouseClick:Connect(function() --ClickTrigger注册鼠标左键点击事件
	print("TriggerMouseClick")
end)
-- 备注：在一个物体上做点击和松开操作，点击和松开都会触发一次事件

-- 函数：TriggerRightMouseClick(rwobject)
-- 函数说明：检测到鼠标右键点击时，触发此事件
-- 参数：rwobject
-- 参数说明：Clicktrigger对象
-- 代码说明：创建一个零件和一个点击触发器，将点击事件器归入零件的子物体，鼠标左键点击零件，观察是否触发事件
-- 代码示例：
local part = RWObject.Create("Part") -- 创建零件
local click = RWObject.Create("ClickTrigger") -- 创建点击触发器
click.Parent = part -- ClickTrigger的父级设置为Part
script.Parent = part -- 当前脚本的父级设置为Part
part.Position = Vector3(0,0.125,3) -- Part的位置赋值
click.Position = Vector3(0,0.125,5) -- ClickTrigger的位置赋值
click.MaxClickDistance = 5000 -- ClickTrigger的最大点击距离赋值
click.MouseCursorImage = "rwid://T18RdTBybT1RCxfErK" --鼠标光标图片赋值

click.TriggerRightMouseClick:Connect(function() --ClickTrigger注册点击和松开操作事件
	print("TriggerRightMouseClick")
end)
-- 备注：在一个物体上做点击和松开操作，点击和松开都会触发一次事件