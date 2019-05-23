<<<<<有问题>>>>>
-- 函数：GetLargestDistance()
-- 函数说明：当相机与拍摄对象之间存在遮挡物时，需要移动摄像机，使相机到摄像机之间没有遮挡物，这个函数返回的是摄像机需要移动的距离
-- 代码说明：创建三个对象，一个摄像机、一个零件、一个角色，将零件遮挡住摄像机与人物，观察返回值是否正常
-- 代码示例：
local camera = RWObject.Create("Camera") -- 创建相机
local part = RWObject.Create("Part") -- 创建零件
local person = RWObject.Create("Avatar") -- 创建角色
camera.Position = Vector3(0,0.125,9) -- 相机的位置赋值
part.Position = Vector3(0,0.125,12) -- 零件的位置赋值
person.Position = Vector3(0,0.125,15) -- 角色的位置赋值
local distance = camera:GetLargestDistance() -- 返回相机需要移动的距离
print(tostring(distance)) -- 暑促距离
--备注：摄像机与拍摄对象之间无障碍还会返回对象

<<<<<有问题>>>>>
-- 函数：GetAllObscuringParts()
-- 函数说明：获取相机与拍摄对象之间存在的所有遮挡物，将遮挡物对象作为列表并返回
-- 参数：Vector3(X，Y，Z) pos 
-- 参数说明：屏幕的指定坐标
-- 返回值：Ray
-- 返回值说明：从指定的ScreenPoint发出的射线
-- 代码说明：以鼠标位置创建射线，并将于射线碰撞的零件变为红色 忽略底板
-- 代码示例：
local function MyUpdate()
	local ray = WorkSpace.摄像机:ScreenToRay(Mouse.MousePosition) -- 根据鼠标点的位置创建一个rar
	--此句为不忽略新底板的代码
	--local e,p = WorkSpace:FindPartOnRay(ray) 
	local e,p = WorkSpace:FindObjOnRay(ray,WorkSpace.新底板) 
	if e then
		e.Color = Vector3.New(255,0,0) -- 将射线碰到的对象变成红色
	end
end    
local function coroutineUpdate()
	while true do
		coroutine.wait(0.01) -- 实时监测
		MyUpdate()
	end
end
coroutine.start(coroutineUpdate)
-- 备注：摄像检测有时会失灵

-- 函数：ViewportToRay()
-- 函数说明：从相机Viewport的指定坐标发出射线，射线方向与摄像机一致
-- 参数：Vector3(X，Y，Z) pos 
-- 参数说明：Viewport的指定坐标
-- 返回值：Ray
-- 返回值说明：从指定的ViewPortPoint发出的射线
-- 代码说明：从视区上的某个位置（以像素为单位）创建单位光线，该位置与相机方向上的特定深度相同。
-- 代码示例：
local cam = WorkSpace.摄像机 -- 获取工作区下的摄像机
local pos = cam:ViewportToRay(Vector3.New(1,2,1)) --从相机的(1,2,1)坐标发出射线
print(tostring(pos))--输出位置

-- 函数：WorldToScreen(pos)
-- 函数说明：将指定的游戏世界的坐标转换为屏幕坐标
-- 参数：Vector3(X，Y，Z) pos 
-- 参数说明：世界坐标
-- 返回值：vector3
-- 返回值说明：返回的屏幕坐标
-- 代码说明：返回矢量3在世界上的二维屏幕位置、它在屏幕上的深度以及它是否可见。GUI插入的帐户
-- 代码示例：
local cam = WorkSpace.摄像机 -- 获取工作区下的摄像机
local pos = cam:WorldToScreen(Vector3.New(1,2,1)) -- 将世界坐标(1,2,1)转化成屏幕坐标
print(tostring(pos)) -- 输出屏幕坐标

-- 函数：WorldToViewport(pos)
-- 函数说明：将指定的游戏世界的坐标转换为相机的Viewport坐标
-- 参数：Vector3(X，Y，Z) pos 
-- 参数说明：世界坐标
-- 返回值：vector3
-- 返回值说明：返回的ViewPort坐标
-- 代码说明：返回矢量3在世界上的二维屏幕位置，它来自屏幕，以及是否可见。
-- 代码示例：
local cam = WorkSpace.摄像机 -- 获取工作区下的摄像机
local pos = cam:WorldToViewport(Vector3.New(1,2,1)) -- 将世界坐标(1,2,1)转换为Viewport坐标
print(tostring(pos)) -- 输出坐标




