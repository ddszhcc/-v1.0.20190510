-- 函数：DrawLine(Array)
-- 函数说明：根据列表中的坐标点，在游戏世界中绘制直线
-- 参数：table
-- 参数说明：Array 存储Vector3坐标点的数组
-- 代码说明：创建一条绘制直线
-- 代码示例：
local dir1 = Vector3(0,3,9) -- 坐标点1
local dir2 = Vector3(0,6,16) -- 坐标点2
local dir3 = Vector3(0,9,20) -- 坐标点3
local tb = {dir1,dir2,dir3} -- 把所有坐标点放入表中
DrawLine(tb) -- 根据存储的点画线

-- 函数：UnDrawLine()
-- 函数说明：取消显示已绘制的线条
-- 参数：table
-- 参数说明：Array 存储Vector3坐标点的数组
-- 代码说明：创建一条绘制直线,3秒后取消显示
-- 代码示例：
local dir1 = Vector3(0,3,9) -- 坐标点1
local dir2 = Vector3(0,6,16) -- 坐标点2
local dir3 = Vector3(0,9,20) -- 坐标点3
local tb = {dir1,dir2,dir3}  -- 把所有坐标点放入表中
DrawLine(tb) -- 根据存储的点画线
wait(3) -- 等待3
UnDrawLine(tb) -- 取消显示已绘制的线

-- 函数：DelayDestroy(tarObj,delaytime)
-- 函数说明：使指定的对象在一定时间后被删除
-- 参数1：string
-- 参数1说明：tarObj 目标对象；
-- 参数2：float
-- 参数2说明：delaytime 延迟时间
-- 代码说明：创建一个角色对象，3秒后销毁
-- 代码示例：
local person = RWObject.Create("Avatar") -- 创建角色
DelayDestroy(person,3) -- 使角色在3后删除

-- 函数：GetService(servicename)
-- 函数说明：获取服务类对象
-- 参数1：string
-- 参数1说明：servicename 服务名称，非枚举（WorkSpace、PlayerStoreData、StarterPlayers、StarterPack、GameSetting、GameRun、ClientStorage、ClientfirstLogic、ServerStorage、PropertyWatcherService）
-- 返回值：rwobject
-- 返回值说明：与servicename对应的服务类对象
-- 代码说明：传入服务字符串名称，观察返回的对象是否为服务类对象
-- 代码示例：
local obj = GetService("WorkSpace")
for k,v in pairs(obj) do
	print(tostring(k).."             "..tostring(v))
end

-- 函数：Wait(secound)
-- 函数说明：等待（）秒
-- 参数1：int 
-- 参数1说明：等待的时间
-- 代码说明：创建一个打印，过两秒后再执行一个打印
-- 代码示例：
print("1")
wait(2)
print("3")

-- 函数：Rwrequire(modulepath)
-- 函数说明：引用指定的模块，例如WorkSpace.Module
-- 参数1：string
-- 参数1说明：引用模块的路径
-- 代码说明：先创建一个通用模块脚本，里面定义一些属性，还有一个方法，然后使用服务端脚本引用通用模块脚本并调用，观察是否打印属性和方法
-- 代码示例：
服务器代码：
a = RWrequire(WorkSpace["通用模块脚本"])
dump(a.a)
dump(a.b)
a.ab()
通用模块脚本代码：
mod = {}
mod.a = "hello"
mod.b = "world"
function mod.ab()
	c = RWObject.Create("Part")
	c.Name = mod.a..mod.b
	end
return mod