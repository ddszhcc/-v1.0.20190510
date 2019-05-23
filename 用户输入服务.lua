-- 函数：GetControllerGravity()
-- 函数说明：获取当前设备的重力矢量
-- 返回值：vector3
-- 返回值说明：返回的重力矢量
-- 代码说明：观察打印的重力矢量是否输出
-- 代码示例：
wait(1) -- 等待1
local dir = UserInputService:GetDeviceGravity() -- 获取当前设备的重力矢量
print(tostring(dir)) -- 输出重力矢量

-- 函数：GetControllerGravity()
-- 函数说明：获取当前设备的旋转角度
-- 返回值：vector3
-- 返回值说明：返回的设备
-- 代码说明：观察打印的旋转角度是否输出
-- 代码示例：
wait(1) -- 等待1
local dir = UserInputService:GetDeviceRotation() -- 获取当前设备的旋转角度
print(tostring(dir)) -- 输出旋转角度

-- 函数：GetKeysPressed()
-- 函数说明：返回与当前按下的枚举/键代码键关联的InputObject数组
-- 返回值：table
-- 返回值说明：{inputobject 输入信息对象}
-- 代码说明：在循环中不断监测当前对象按下的键位枚举,遍历返回的表，并观察遍历信息是否正确
-- 代码示例：
coroutine.start(function()
	while true do
		coroutine.wait(0.1) -- 等待0.1
		local str = ""
		local a = UserInputService.GetKeyPressed() -- 获取当前按下的枚举/键代码关联的InputObject数组
		for i = 1,#a do
			str = str..tostring(a[i].InputKeyCode).."  " -- 输出键的名字
		end
		print(str) -- 输出
	end
end)
-- 备注：返回数组为空

-- 函数：GetLastInputType()
-- 函数说明：返回用户最近一次的输入类型
-- 返回值：enum
-- 返回值说明：枚举类型UserInputType 最新的输入类型
-- 代码说明：观察是否触发用户最近一次的输入事件
-- 代码示例：
UserInputService.LastInputTypeChanged:Connect(function() -- 获取用户最近一次的输入类型
	print("GetLastInputType==="..tostring(UserInputService:GetLastInputType())) -- 输出最新的输入类型
end)

-- 函数：GetMouseButtonsPressed()
-- 函数说明：返回与当前按住的鼠标按钮对应的inputObject数组
-- 返回值：table
-- 返回值说明：{inputobject 输入信息对象}
-- 代码说明：在循环中不断监测当前对象按下的键位枚举,遍历返回的表，并观察遍历信息是否正确
-- 代码示例：
coroutine.start(function() 
	while true do
		coroutine.wait(0.1) -- 等待0.1
		
		local str = ""
		local a = UserInputService.GetMouseButtonsPressed() -- 获取与当前按住的鼠标按钮对应的inputObject数组
		for i = 1,#a do
			str = str..tostring(a[i].InputType).."  " -- 输出键的枚举
		end
		print(str)
	end
end)

-- 函数：GetMouseDelta()
-- 函数说明：返回玩家鼠标在上一个渲染帧中位置偏移量（以像素为单位）
-- 返回值：vector3
-- 返回值说明：移动的偏移量，X为水平方向，Y为竖直方向
-- 代码说明：观察是否触发鼠标在上一个渲染帧中位置偏移量事件
-- 代码示例：
coroutine.start(function()
	while true do
		coroutine.wait(0.1) -- 等待0.1
		print(tostring(UserInputService.GetMouseDelta())) -- 输出玩家鼠标在上一个渲染帧中位置偏移量
	end
end)

-- 函数：GetMouseLocation()
-- 函数说明：返回玩家鼠标的当前屏幕位置
-- 返回值：vector2
-- 返回值说明：鼠标处于屏幕的坐标
-- 代码说明：观察是否触发鼠标的当前屏幕位置事件
-- 代码示例：
coroutine.start(function()
	while true do
		coroutine.wait(0.1)	-- 等待0.1
		print(tostring(UserInputService.GetMouseLocation())) -- 输出玩家鼠标的当前屏幕位置
	end
end)

<<<<<有问题>>>>>
-- 函数：IsKeyDown(KeyCode)
-- 函数说明：返回给定的按键当前是否处于按下状态
-- 参数：string 
-- 参数说明：KeyCode 标识键盘输入按键的字符
-- 返回值：bool
-- 返回值说明：是否处于按下状态
-- 代码说明：在循环中不断监测我按下的键位，如果监测到则会打印True，否则一直为false
-- 代码示例：
coroutine.start(function()
	while true do
		coroutine.wait(0.01) -- 等待0.01
		print(tostring(UserInputService.IsKeyDown(UnityEngine.KeyCode.Q))) -- 输出Q按键是否处于按下状态
	end
end)
-- 备注：点10下总有几下是不灵的

-- 函数：IsMouseButtonPressed(mouseButton)
-- 函数说明：返回给定的鼠标按钮是否处于按下状态
-- 参数：string 
-- 参数说明：mousButton标识鼠标输入按键的类型
-- 返回值：bool
-- 返回值说明：是否处于按下状态
-- 代码说明：在循环中不断监测鼠标按下，如果监测到则会打印True，否则一直为false
-- 代码示例：
coroutine.start(function()
	while true do
		coroutine.wait(0.1) -- 等待0.1
		if UserInputService.IsMouseButtonPressed(UserInputType.MouseButton1) then
			print(tostring(UserInputService.IsMouseButtonPressed(UserInputType.MouseButton1))) -- 输出鼠标的按钮是否处于按下状态
		end
	end
end)

-- 事件：InputBegan(inputobject,bool)
-- 事件说明：用户输入（指鼠标、触摸、键盘等）开始后，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：用户输入（指鼠标、触摸、键盘等）开始后，观察是否打印事件
-- 代码示例：
UserInputService.InputBegan:Connect(function(inputobject) -- 用户输入开始事件注册
	print("触发输入事件")
	print(tostring(inputobject.InputType)) 
	print(tostring(inputobject.InputState)) 
	print(tostring(inputobject.InputKeyCode)) 
end)

-- 事件：InputChanged(inputobject,bool)
-- 事件说明：用户输入改变时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：用户输入改变时，观察是否打印事件
-- 代码示例：
UserInputService.InputChanged:Connect(function(inputobject) -- 用户输入改变事件注册
	print("触发输入改变事件")
	print(tostring(inputobject.InputType)) -- 
	print(tostring(inputobject.InputState))
	print(tostring(inputobject.InputKeyCode))
end)

-- 事件：InputEnded(inputobject,bool)
-- 事件说明：用户输入结束时，触发此事件
-- 参数：rwobject
-- 参数说明：inputobject对象
-- 代码说明：用户输入结束时，观察是否打印事件
-- 代码示例：
UserInputService.InputEnded:Connect(function(inputobject) -- 用户输入结束事件注册
	print("触发输入结束事件")
	print(tostring(inputobject.InputType))
	print(tostring(inputobject.InputState))
	print(tostring(inputobject.InputKeyCode))
end)

-- 事件：JumpRequired()
-- 事件说明：当用户输入请求跳跃时，触发此事件
-- 代码说明：当用户输入请求跳跃时，观察是否打印事件
-- 代码示例：
UserInputService.JumpRequired:Connect(function() -- 用户输入请求跳跃事件注册
	print("触发用户输入请求跳跃事件")
end)

<<<<<有问题>>>>>
-- 事件：LastInputTypeChanged(userInputType）
-- 事件说明：当用户输入类型改变时，触发此事件
-- 参数1：枚举类型UserInputType
-- 参数1说明：输入设备的类型
-- 代码说明：当用户输入类型改变时，观察是否打印事件
-- 代码示例：
UserInputService.LastInputTypeChanged:Connect(function() -- 用户输入类型改变事件注册
	print("触发用户输入类型改变事件")
end)
-- 备注：报错无反应

-- 事件：TouchEnded(Touch, false)
-- 事件说明：当用户停止在触摸设备的输入时，触发此事件
-- 参数1：struct
-- 参数1说明：Touch 结构体
-- 代码说明：当用户停止在触摸设备的输入时，观察是否打印事件
-- 代码示例：
UserInputService.TouchEnded:Connect(function() -- 用户停止在触摸设备的输入事件注册
	print("触发用户停止输入事件")
end)

-- 事件：TouchHoldpress(Touch.position, touchState, false)
-- 事件说明：当用户长时间触摸，并停留在同一位置时，触发此事件
-- 参数1：Vector3
-- 参数1说明：触摸点坐标
-- 参数1：枚举类型UserInputState
-- 参数1说明：输入类型的状态
-- 代码说明：当用户长时间触摸，并停留在同一位置时，观察是否打印事件
-- 代码示例：
UserInputService.TouchHoldpress:Connect(function() -- 用户长时间触摸事件注册
	print("触发用户长时间触摸，并停留在同一位置时事件")
end)


-- 事件：TouchMoved(Touch, false)
-- 事件说明：当用户在触摸设备上移动手指时，触发此事件
-- 参数1：struct
-- 参数1说明： Touch 结构体
-- 代码说明：当用户在触摸设备上移动手指时，观察是否打印事件
-- 代码示例：
UserInputService.TouchMoved:Connect(function() -- 用户在触摸设备上移动手指事件注册
	print("触发用户在触摸设备上移动手指事件")
end)

-- 事件：TouchPan(Touch.position, pandistance, panspeed, touchState)
-- 事件说明：当用户在触摸设备上平移手指时，触发此事件
-- 参数1：Vector3
-- 参数1说明：触摸点坐标
-- 参数2：Vector3
-- 参数2说明：移动偏移量
-- 参数2：float
-- 参数2说明：偏移速度（像素/秒）
-- 参数2：枚举类型UserInputState
-- 参数2说明：输入类型的状态
-- 代码说明：当用户在触摸设备上平移手指时，观察是否打印事件
-- 代码示例：
UserInputService.TouchPan:Connect(function() -- 用户在触摸设备上平移手指事件注册
	print("触发用户在触摸设备上移动手指事件")
end)

-- 事件：TouchPinch({ newtouch1.position, newtouch2.position }, scale , pinchspeed, touchState)
-- 事件说明：当用户使用两个手指执行捏或拉手势时，触发此事件
-- 参数1：table
-- 参数1说明：table{触摸点1坐标，触摸点2坐标}
-- 参数2：float
-- 参数2说明：缩放系数，大于1为放大，小于1为缩小
-- 参数3：nil
-- 参数3说明：策划文档中空
-- 参数4：枚举类型UserInputState
-- 参数4说明：输入类型的状态
-- 代码说明：当用户在触摸设备上执行捏或拉手势时，观察是否打印事件
-- 代码示例：
UserInputService.TouchPinch:Connect(function() -- 用户使用两个手指执行捏或拉手势事件注册
	print("触发用户使用两个手指执行捏或拉手势事件")
end)

-- 事件：TouchRotate({ newtouch1.position, newtouch2.position }, signedAngle, signedAnglespeed , touchState)
-- 事件说明：当用户使用两个手指执行旋转手势时，触发此事件
-- 参数1：table
-- 参数说明：table{触摸点1坐标，触摸点2坐标}
-- 参数2：float
-- 参数2说明：每帧旋转角度
-- 参数3：nil
-- 参数3说明：策划文档中空
-- 参数4：枚举类型UserInputState
-- 参数4说明：输入类型的状态
-- 代码说明：当用户在触摸设备上旋转手势时，观察是否打印事件
-- 代码示例：
UserInputService.TouchRotate:Connect(function() -- 用户使用两个手指执行旋转手势事件注册
	print("触发用户使用两个手指执行捏或拉手势事件")
end)

-- 事件：TouchStarted(Touch, false)
-- 事件说明：当用户开始触摸时，触发此事件
-- 参数1：struct
-- 参数1说明：结构体
-- 代码说明：当用户在触摸设备上触摸时，观察是否打印事件
-- 代码示例：
UserInputService.TouchStarted:Connect(function() -- 用户开始触摸事件注册
	print("触发当用户开始触摸事件")
end)

-- 事件：TouchSwipe(touchMoveDir, touchCount)
-- 事件说明：当用户时，触发此事件，与TouchMove不同，TouchSwipe会传入移动的方向
-- 参数1：touchMoveDir
-- 参数1说明：滑动方向
-- 参数2：Input.touchCount
-- 参数2说明：触摸点数量
-- 代码说明：当用户在触摸设备上滑动时，观察是否打印事件
-- 代码示例：
UserInputService.TouchSwipe:Connect(function() --用户在触摸设备上滑动事件注册
	print("触发当用户开始滑动事件")
end)

-- 事件：TouchTap(Touch.position)
-- 事件说明：当用户在触摸设备上轻轻点击时，触发此事件
-- 参数：Vector3
-- 参数说明：触摸点坐标
-- 代码说明：当用户在触摸设备上轻轻点击时，观察是否打印事件
-- 代码示例：
UserInputService.TouchTap:Connect(function() -- 用户在触摸设备上轻轻点击事件注册
	print("触发当用户在触摸设备上轻轻点击事件")
end)

-- 事件：TouchTapInGame(Touch.position, false)
-- 事件说明：当用户的轻击事件发生在游戏世界时，触发此事件
-- 参数：Vector3
-- 参数说明：触摸点坐标
-- 代码说明：当用户的轻击事件发生在游戏世界时，观察是否打印事件
-- 代码示例：
UserInputService.TouchTapInGame:Connect(function() -- 用户的轻击事件发生在游戏世界事件注册
	print("触发用户轻击事件发生在游戏世界事件")
end)
