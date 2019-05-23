-- 函数：ListenPropertyChange(propertyKey,handle)
-- 函数说明：监听给定属性，在属性改变时执行给定函数
-- 参数1：string
-- 参数1说明：propertyKey 属性名称
-- 参数2：function
-- 参数2说明：handle 属性改变时执行的函数
-- 代码说明：将零件注册到方法中监听零件的Scale属性，Scale发生变化，观察是否打印日志
-- 代码示例：
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3.New(2, 1, 0) -- 给零件的位置赋值
local function handle(property, value, newValue, objectName, objectClassName) -- 属性改变方法定义
	print("property " .. property .. " Value Changed")
end
PropertyWatcherService.ListenPropertyChange(part, "Scale", handle) -- 零件的属性改变事件注册
part.Scale = Vector3(0.5,0.5,0.5) -- 零件的缩放属性赋值

-- 函数：DisListen(propertyKey)
-- 函数说明：取消监听给定的属性
-- 参数1：string
-- 参数1说明：propertyKey 属性名称
-- 代码说明：将零件注册到方法中监听零件的Scale属性，Scale发生变化后再等待4秒取消监听的指定属性，观察是否还触发监听事件
-- 代码示例：
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3.New(2, 1, 0) --给零件的位置赋值
local function handle(property, value, newValue, objectName, objectClassName) --属性改变方法定义
	print("property " .. property .. " Value Changed")
end
PropertyWatcherService.ListenPropertyChange(part, "Scale", handle) -- 零件的属性改变事件注册
part.Scale = Vector3(0.5,0.5,0.5) -- 零件的缩放属性赋值
wait(4) -- 等待4
PropertyWatcherService.DisListen(part,"Scale") -- 零件的属性改变事件移除
wait(1) -- 等待1
part.Scale = Vector3(0.3,0.3,0.3) -- 零件的缩放属性赋值