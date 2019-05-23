-- 事件：GuiMouseLeftPress()
-- 事件说明：鼠标左键点击GUI对象时，触发此事件
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标左键点击GUI对象时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseLeftPress:Connect(function() -- UiMask的鼠标左键点击GUI对象事件注册
	print("触发鼠标左键点击事件")
end)

-- 事件：GuiMouseLeftDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标左键在GUI对象上按下时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标左键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseLeftDown:Connect(function()  -- UiMask的鼠标左键在GUI对象上按下事件注册
	print("触发鼠标按下事件")
end)

-- 事件：GuiMouseLeftUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标左键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标左键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseLeftUp:Connect(function() -- UiMask的鼠标左键在GUI对象上抬起事件注册
	print("触发鼠标抬起事件")
end)

-- 事件：GuiMouseRightPress()
-- 事件说明：鼠标右键点击GUI对象时，触发此事件
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标右键在GUI对象上持续点击，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseRightPress:Connect(function() -- UiMask的鼠标右键点击GUI对象事件注册
	print("触发鼠标右键持续点击事件")
end)

-- 事件：GuiMouseRightDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标右键在GUI对象上按下时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标右键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseRightDown:Connect(function() -- UiMask的鼠标右键在GUI对象上按下事件注册
	print("触发鼠标按下事件")
end)

-- 事件：GuiMouseRightUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标右键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标右键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseRightUp:Connect(function() -- UiMask的鼠标右键在GUI对象上抬起事件注册
	print("触发鼠标抬起事件")
end)

-- 事件：GuiMouseScrollDown(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标中键在GUI对象上按下时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标中键在GUI对象上按下，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseScrollDown:Connect(function()  -- UiMask的鼠标中键在GUI对象上按下事件注册
	print("触发鼠标中键按下事件")
end)

-- 事件：GuiMouseScrollUp(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标中键在GUI对象上抬起时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标中键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseScrollUp:Connect(function() -- UiMask的鼠标中键在GUI对象上抬起事件注册
	print("触发鼠标中键抬起事件")
end)

-- 事件：GuiMouseScrollPress()
-- 事件说明：鼠标中键点击GUI对象时，触发此事件
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标中键在GUI对象上抬起，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseScrollPress:Connect(function()  -- UiMask的鼠标中键点击GUI对象事件注册
	print("触发鼠标中键持续点击事件")
end)

<<<<<有问题>>>>>
-- 事件：GuiInputBegan(inputobject,bool)
-- 事件说明：用户输入（指鼠标、触摸、键盘等）开始后，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机触摸，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiInputBegan:Connect(function(inputobject) -- UiMask的用户输入开始事件注册
	print("触发输入事件")
	print(tostring(inputobject.InputType))
	print(tostring(inputobject.InputState))
end)
-- 备注：手机点击一下触发4次

<<<<<有问题>>>>>
-- 事件：GuiInputChanged(inputobject,bool)
-- 事件说明：用户输入改变时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机触摸改变输入状态，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiInputChanged:Connect(function(inputobject) -- UiMask的用户输入改变事件注册
	print("触发输入改变事件")
end)
--备注：手机点击一下触发4次 

<<<<<有问题>>>>>
-- 事件：GuiInputEnded(inputobject,bool)
-- 事件说明：用户输入结束时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机输入结束时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiInputEnded:Connect(function(inputobject) -- UiMask的用户输入结束事件注册
	print("触发输入结束事件")
end)
--备注：手机点击一下触发4次 

-- 事件：GuiMouseWheelBackward(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标滚轮向后滚动时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标滚轮向后滚动，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseWheelBackward:Connect(function()  -- UiMask鼠标滚轮向后滚动事件注册
	print("触发鼠标滚轮向后滚动事件")
end)

-- 事件：GuiMouseWheelForward(mousePosition.x, mousePosition.y)
-- 事件说明：鼠标滚轮向前滚动时，触发此事件
-- 参数1：Vector2
-- 参数说明：鼠标的X轴坐标；
-- 参数2：Vector2
-- 参数2说明：鼠标的Y轴坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后鼠标滚轮向前滚动，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace["123"] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.GuiMouseWheelForward:Connect(function()  -- UiMask的鼠标滚轮向前滚动事件注册
	print("触发鼠标滚轮向前滚动事件")
end)

-- 事件：GuiTouchLongPress(Touch.position, touchState)
-- 事件说明：在GUI对象上保持同一位置长按时，触发此事件
-- 参数1：Vector3
-- 参数说明：触摸点坐标
-- 参数2：枚举类型UserInputState
-- 参数2说明：输入类型的状态
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机保持同一位置长按gui对象，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchLongPress:Connect(function(pos,state) -- UiMask在GUI对象上保持同一位置长按事件注册
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
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机触摸移动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchPan:Connect(function(pos,dir,speed,state) -- UiMask的在GUI对象上移动手指事件注册
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
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机触摸执行捏拉手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchPan:Connect(function(table,dir,speed,state)  -- UiMask的在GUI对象上使用两个手指执行捏或拉手势事件注册
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
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机旋转移动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchRotate:Connect(function(table1,dir,speed,state)  -- UiMask的在GUI对象上使用两个手指执行旋转手势事件注册
	print("触发在gui对象上旋转手指事件")
	for k,v in pairs(table1) do
		print("表中坐标轴:"..tostring(k).."      ".."表中目标点:"..tostring(v))
	end
	print(tostring(dir))
	print(tostring(speed))
	print(tostring(state))
end)
-- 备注：获取不到参数1数组

-- 事件：GuiTouchSwipe(touchMoveDir, touchCount)
-- 事件说明：在GUI对象上，使用手指滑动时，触发此事件。
-- 参数1：touchMoveDir
-- 参数1说明：滑动方向
-- 参数2：Input.touchCount
-- 参数2说明：触摸点数量
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机在gui对象上滑动手指，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchSwipe:Connect(function(touchMoveDir,touchCount) -- UiMask的在GUI对象上，使用手指滑动事件注册
	print("滑动方向:"..tostring(touchMoveDir).."     ".."触摸点数量:"..touchCount)
end)

-- 事件：GuiTouchTap(Touch.position)
-- 事件说明：当用户在触摸设备上轻轻点击时，触发此事件
-- 参数：Vector3
-- 参数说明：触摸点坐标
-- 代码说明：创建一个uimask，使uimask成为玩家界面下的子物体，然后手机触摸设备上轻轻点击时，观察是否触发事件
-- 代码示例：
wait(1) -- 等待1
local uipanel = RWObject.Create("UiPanel") -- 创建一个UiPanel
local uimask = RWObject.Create("UiMask") -- 创建一个UiMask
local player = WorkSpace[123] -- 获取工作区下的123角色
uimask.Parent = uipanel -- 把UiMask的父级设为UiPanel
local person = Players:GetPlayerByUserId(player.PlayerId) -- 通过角色的PlayerId来获取玩家
uipanel.Parent = person.玩家界面 -- 把UiPanel的父级设为玩家界面
uimask.TouchTap:Connect(function(dir) -- UiMask的用户在触摸设备上轻轻点击事件注册
	print("触摸点坐标:"..tostring(dir))
end)

