<<<<<有问题>>>>>
-- 事件：GuiMouseLeftPress()
-- 事件说明：鼠标左键点击GUI对象时，触发此事件
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标左键点击GUI对象时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseLeftPress:Connect(function() -- UiButton注册触发鼠标左键点击事件
	print("触发鼠标左键点击事件")
end)
-- 备注：点击没有调用uiButton和uiObject事件的UI对象也触发了事件逻辑

-- 事件：GuiMouseLeftDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标左键在GUI对象上按下时，触发此事件
-- 参数1：Vector3
-- 参数1说明：鼠标的X轴坐标
-- 参数2：Vector3
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标左键点击GUI对象时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseLeftDown:Connect(function(x,y)  -- UiButton注册触发鼠标左键点击事件
	print("触发鼠标左键点击事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseLeftUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标左键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标左键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseLeftUp:Connect(function(x,y) -- UiButton注册触发鼠标左键抬起事件
	print("触发鼠标左键抬起事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseRightPress()
-- 事件说明：鼠标右键点击GUI对象时，触发此事件
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标右键在GUI对象上持续点击，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseRightPress:Connect(function() -- UiButton注册触发鼠标右键持续点击事件
	print("触发鼠标右键持续点击事件")
end)

-- 事件：GuiMouseRightDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标右键在GUI对象上按下时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标右键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseRightDown:Connect(function()  -- UiButton注册触发鼠标按下事件
	print("触发鼠标按下事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseRightUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标右键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标右键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseRightUp:Connect(function() -- UiButton注册触发鼠标抬起事件
	print("触发鼠标抬起事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseScrollDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标中键在GUI对象上按下时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标中键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseScrollDown:Connect(function() -- UiButton注册触发鼠标中键按下事件
	print("触发鼠标中键按下事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseScrollUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标中键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标中键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseScrollUp:Connect(function() -- UiButton注册触发鼠标中键抬起事件
	print("触发鼠标中键抬起事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiMouseScrollPress()
-- 事件说明：鼠标中键点击GUI对象时，触发此事件
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标中键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace["123"] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseScrollPress:Connect(function() -- UiButton注册触发鼠标中键点击GUI对象事件
	print("触发鼠标中键点击GUI对象事件".."     ".."x坐标:"..x.."y坐标:"..y)
end)

-- 事件：GuiInputBegan(inputobject,bool)
-- 事件说明：用户输入（指鼠标、触摸、键盘等）开始后，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机触摸，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiInputBegan:Connect(function(inputobject)  -- UiButton注册触发输入事件
	print("触发输入事件")
	print(tostring(inputobject.InputType))
	print(tostring(inputobject.InputState))
end)

-- 事件：GuiInputChanged(inputobject,bool)
-- 事件说明：用户输入改变时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机触摸改变输入状态，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiInputChanged:Connect(function(inputobject)   -- UiButton注册触发输入改变事件
	print("触发输入改变事件")
	print(tostring(inputobject.InputType))
	print(tostring(inputobject.InputState))
end)

-- 事件：GuiInputEnded(inputobject,bool)
-- 事件说明：用户输入结束时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机输入结束时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiInputEnded:Connect(function(inputobject) -- UiButton注册触发输入结束事件
	print("触发输入结束事件")
	print(tostring(inputobject.InputType))
	print(tostring(inputobject.InputState))
end)

-- 事件：GuiMouseWheelBackward(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标滚轮向后滚动时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标滚轮向后滚动，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseWheelBackward:Connect(function(x,y) -- UiButton注册触发鼠标滚轮向后滚动事件
	print("触发鼠标滚轮向后滚动事件".."     ".."x坐标:"..tostring(x).."y坐标:"..tostring(y))
end)

-- 事件：GuiMouseWheelForward(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标滚轮向前滚动时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后鼠标滚轮向前滚动，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.GuiMouseWheelForward:Connect(function(x,y) -- UiButton注册触发鼠标滚轮向前滚动事件
	print("触发鼠标滚轮向前滚动事件".."     ".."x坐标:"..tostring(x).."y坐标:"..tostring(y))
end)

-- 事件：GuiTouchLongPress(Touch.position, touchState)
-- 事件说明：在GUI对象上保持同一位置长按时，触发此事件
-- 参数1：Vector3
-- 参数说明：触摸点坐标
-- 参数2：枚举类型UserInputState
-- 参数2说明：输入类型的状态
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机保持同一位置长按gui对象，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchLongPress:Connect(function(pos,state) -- UiButton注册触发长按gui对象事件
	print("触发长按gui对象事件")
	print(tostring(pos))
	print(tostring(state))
end)

-- 事件：GuiTouchPan(Touch.position, pandistance, panspeed, touchState)
-- 事件说明：在GUI对象上移动手指时，触发此事件
-- 参数1：Vector3
-- 参数1说明：触摸点坐标
-- 参数2：Vector3
-- 参数2说明：移动偏移量
-- 参数2：float
-- 参数2说明：偏移速度（像素/秒）
-- 参数2：枚举类型UserInputState
-- 参数2说明：输入类型的状态
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机触摸移动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchPan:Connect(function(pos,dir,speed,state) -- UiButton注册触发在gui对象上移动手指事件
	print("触发在gui对象上移动手指事件")
	print(tostring(pos))
	print(tostring(dir))
	print(tostring(speed))
	print(tostring(state))
end)

-- 事件：GuiTouchPinch({ newtouch1.position, newtouch2.position }, scale , pinchspeed, touchState)
-- 事件说明：在GUI对象上使用两个手指执行捏或拉手势时，触发此事件
-- 参数1：table
-- 参数1说明：table{触摸点1坐标，触摸点2坐标}
-- 参数2：float
-- 参数2说明：缩放系数，大于1为放大，小于1为缩小
-- 参数3：nil
-- 参数3说明：策划文档中空
-- 参数4：枚举类型UserInputState
-- 参数4说明：输入类型的状态
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机触摸执行捏拉手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
print("11111111111111111111111")
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchPinch:Connect(function(table,dir,speed,state) -- UiButton注册触发在gui对象上捏拉手指事件
	print("触发在gui对象上捏拉手指事件")
	for k,v in pairs(table) do
		print("表中坐标轴:"..tostring(k).."      ".."表中目标点:"..tostring(v))
	end
	print(tostring(dir))
	print(tostring(speed))
	print(tostring(state))
end)

<<<<<有问题>>>>>
-- 事件：GuiTouchRotate({ newtouch1.position, newtouch2.position }, signedAngle, signedAnglespeed , touchState)
-- 事件说明：在GUI对象上使用两个手指执行旋转手势时，触发此事件
-- 参数1：table
-- 参数说明：table{触摸点1坐标，触摸点2坐标}
-- 参数2：float
-- 参数2说明：每帧旋转角度
-- 参数3：nil
-- 参数3说明：策划文档中空
-- 参数4：枚举类型UserInputState
-- 参数4说明：输入类型的状态
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机旋转移动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchRotate:Connect(function(obj,dir,speed,state) -- UiButton注册触发在gui对象上旋转手指事件
	print("触发在gui对象上旋转手指事件")
	print(tostring(dir))
	print(tostring(speed))
	print(tostring(state))
end)
--备注：参数1数组无法获取并报错

-- 事件：GuiTouchSwipe(touchMoveDir, touchCount)
-- 事件说明：在GUI对象上，使用手指滑动时，触发此事件。
-- 参数1：touchMoveDir
-- 参数1说明：滑动方向
-- 参数2：Input.touchCount
-- 参数2说明：触摸点数量
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机在gui对象上滑动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchSwipe:Connect(function(touchMoveDir,touchCount)  -- UiButton注册滑动事件
	print("滑动方向:"..tostring(touchMoveDir).."     ".."触摸点数量:"..touchCount)
end)

<<<<<有问题>>>>>
-- 事件：GuiTouchTap(Touch.position)
-- 事件说明：当用户在触摸设备上轻轻点击时，触发此事件
-- 参数：Vector3
-- 参数说明：触摸点坐标
-- 代码说明：创建一个uibtn，使uibtn成为玩家界面下的子物体，然后手机触摸设备上轻轻点击时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建UiPanel
local uibtn = RWObject.Create("UiButton") -- 创建UiButton
local player = WorkSpace[123] -- 获取工作区下的123玩家
uibtn.Parent = uipanel --将创建的UiButton的父级设置成新创建UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 根据玩家的PlayerId来获取当前的玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设置成玩家界面
uibtn.TouchTap:Connect(function(dir)   -- UiButton注册点击事件
	print("触摸点坐标:"..tostring(dir))
end)
-- 备注：点击一下触发两次事件
