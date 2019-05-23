-- 函数：GetBoundingSize()
-- 函数说明：获取Model下所有零件类对象构成碰撞体的最小尺寸
-- 返回值：Vector3
-- 返回值说明：碰撞区域的大小（X，Y,Z）
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接，最后获取获取Model下所有零件类对象构成碰撞体的最小尺寸
-- 代码示例：
local model = RWObject.Create("Model") -- 创建组合对象
local meshpart = RWObject.Create("MeshPart") -- 创建自定义零件
meshpart.Position = Vector3(0,0.125,6) -- 自定义零件位置赋值
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3(4,0.125,3) -- 零件位置赋值
local seat = RWObject.Create("Seat") -- 创建座位
seat.Position = Vector3(0,0.125,-9) -- 座位位置赋值
part.Parent = model -- 零件的父级设置为组合对象
meshpart.Parent = model  -- 自定义零件的父级设置为组合对象
wait(2) -- 等待2
local dir = model:GetBoundingSize() --获取组合对象的碰撞区域大小
print(tostring(dir)) -- 输出碰撞区域大小


-- 函数：MakeSplitJoint()
-- 函数说明：对Model下所有零件类对象进行拼接操作
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接
-- 代码示例：
local model = RWObject.Create("Model") -- 创建组合对象
model.Position = Vector3(0,0.125,3) -- 组合对象的位置赋值
local part = RWObject.Create("Part") -- 创建零件
part.Position = Vector3(0,0.125,6) -- 零件的位置赋值
local meshpart = RWObject.Create("MeshPart") -- 创建自定义零件
meshpart.Position = Vector3(0,0.125,9) -- 自定义零件位置赋值
part.Parent = model -- 零件的父级设置为组合对象
meshpart.Parent = model -- 自定义零件的父级设置为组合对象
local dir = model:MakeSplitJoint() -- 对组合对象下的所有零件类对象进行拼接操作

-- 函数：MoveOffset(delta)
-- 函数说明：根据给定的增量移动Model下的所有可移动对象
-- 参数1：Vector3 
-- 参数1说明：delta 移动的增量
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接，最后按移动增量移动组合对象下所有可移动对象
-- 代码示例：
wait(2) -- 等待2
local part1 = RWObject.Create("Part") -- 创建零件1
part1.Position = Vector3.New(0,1,0) -- 零件的位置赋值
part1.Anchored = true -- 零件的运动学赋值
local part2 = RWObject.Create("Part") -- 创建零件2
part2.Position = Vector3.New(0,2,0) -- 零件2的位置赋值
part2.Anchored = true -- 零件2的运动学赋值

local model = RWObject.Create("Model") -- 创建组合对象
part1.Parent = model -- 零件1的父级设置为组合对象
part2.Parent = model -- 零件2的父级设置为组合对象 
wait(1) -- 等待1
model:MakeSplitJoint() -- 组合对象下的所有零件都进行拼接
wait(1) -- 等待1
model:MoveOffset(Vector3.New(0,0,5)) -- 组合对象的下的可移动对象进行移动

<<<<<有问题>>>>>
-- 函数：RotationTo(rotation)
-- 函数说明：根据给定的角度旋转Model下的所有可旋转对象
-- 参数1：Vector3
-- 参数1说明：rotation 旋转角度
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接，最后按旋转角度旋转组合对象下所有对象
-- 代码示例：
wait(2) -- 等待2
local part1 = RWObject.Create("Part") -- 创建零件1
part1.Position = Vector3.New(0,1,0) -- 零件1
part1.Anchored = true --零件1的运动学赋值
local part2 = RWObject.Create("Part") -- 创建零件2
part2.Position = Vector3.New(0,2,0) -- 零件2的位置赋值
part2.Anchored = true -- 零件2的运动学赋值

local model = RWObject.Create("Model") -- 创建组合对象
part1.Parent = model -- 零件1的父级设置为组合对象
part2.Parent = model -- 零件2的父级设置为组合对象
wait(1) -- 等待1
model:MakeSplitJoint() -- 组合对象下的所有零件进行拼接
wait(1) -- 等待1
model:RotationTo(Vector3.New(0,90,0)) -- 组合对象下的所有可旋转对象进行旋转
-- 备注：不旋转

-- 函数：ScaleTo(scale)
-- 函数说明：根据给定的系数缩放Model下的所有可缩放对象
-- 参数1：float 
-- 参数1说明：scale 缩放系数（等比整体缩放）
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接，最后按给定的系数缩放Model下的所有可缩放对象
-- 代码示例：
wait(2) -- 等待2
local part1 = RWObject.Create("Part") -- 创建零件1
part1.Position = Vector3.New(0,1,0) -- 零件1的位置赋值
part1.Anchored = true -- 零件1的运动学赋值
local part2 = RWObject.Create("Part") -- 创建零件2
part2.Position = Vector3.New(0,2,0) -- 零件2的位置赋值
part2.Anchored = true -- 零件2的运动学赋值

local model = RWObject.Create("Model") -- 创建组合对象
part1.Parent = model -- 零件1的父级设置为组合对象
part2.Parent = model -- 零件2的父级设置为组合对象
wait(1) -- 等待1
model:MakeSplitJoint() -- 组合对象的下的所有零件进行拼接
model:ScaleTo(2) -- 组合对象下的所有可缩放的对象进行缩放

-- 函数：MoveTo(position)
-- 函数说明：使Model对象移动到该点，所有可移动对象保持相对位置不变
-- 参数1：Vector3
-- 参数1说明： position 移动到的坐标点
-- 代码说明：创建组合对象、自定义零件、零件分别将他们归为组合对象的子物体，并进行拼接，最后使Model对象移动到该点，所有可移动对象保持相对位置不变
-- 代码示例：
wait(2) --等待2
local part1 = RWObject.Create("Part") -- 创建零件1
part1.Position = Vector3.New(0,1,0) -- 零件1的位置赋值
part1.Anchored = true -- 零件1的运动学赋值
local part2 = RWObject.Create("Part") -- 创建零件2
part2.Position = Vector3.New(0,2,0) -- 零件2的位置赋值
part2.Anchored = true -- 零件2的运动学赋值

local model = RWObject.Create("Model") -- 创建组合对象
part1.Parent = model -- 零件1的父级设置为组合对象
part2.Parent = model -- 零件2的父级设置为组合对象
wait(1) -- 等待1
model:MakeSplitJoint() -- 组合对象的下的所有零件进行拼接
model:MoveTo(Vector3.New(0,0,5)) -- 使组合对象对象移动到该点，所有可移动对象保持相对位置不变