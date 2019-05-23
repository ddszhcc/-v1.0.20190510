-- 函数：HideCursor()
-- 函数说明：隐藏鼠标指针
-- 代码说明：2秒后隐藏鼠标指针
-- 代码示例：
wait(2) -- 等待2
Mouse:HideCursor() -- 隐藏鼠标指针

-- 函数：ShowCursor()
-- 函数说明：显示鼠标指针
-- 代码说明：2秒后隐藏鼠标指针,2秒后显示鼠标指针
-- 代码示例：
wait(2) -- 等待2
Mouse:HideCursor() -- 隐藏鼠标指针
wait(2) -- 等待2
Mouse:ShowCursor() -- 显示鼠标指针

-- 事件：MouseMove()
-- 事件说明：鼠标移动时，触发此事件
-- 代码说明：观察鼠标移动是否会触发事件
-- 代码示例：
Mouse.MouseMove:Connect(function() -- 鼠标移动事件注册 
	print("触发鼠标移动事件")
end)

<<<<<有问题>>>>>
-- 事件：MouseButtonLeftDown()
-- 事件说明：按下鼠标左键时，触发此事件
-- 代码说明：观察鼠标按下左键是否会触发事件
-- 代码示例：
Mouse.MouseButtonLeftDown:Connect(function() -- 鼠标按下左键事件注册
	print("触发鼠标按下左键事件")
end)
-- 备注：有些地方点击不触发可能有遮罩,ui上点击也不好使

<<<<<有问题>>>>>
-- 事件：MouseButtonLeftUp()
-- 事件说明：抬起鼠标左键时，触发此事件
-- 代码说明：观察鼠标抬起左键是否会触发事件
-- 代码示例：
Mouse.MouseButtonLeftUp:Connect(function() -- 鼠标抬起左键事件注册
	print("触发鼠标抬起左键事件")
end)
-- 备注:有些地方点击不触发可能有遮罩,ui上点击也不好使

-- 事件：MouseLeftPress()
-- 事件说明：持续点击鼠标左键时，触发此事件
-- 代码说明：观察鼠标持续点击是否会触发事件
-- 代码示例：
Mouse.MouseLeftPress:Connect(function() -- 鼠标持续点击鼠标左键事件注册
	print("触发鼠标持续点击左键事件")
end)

-- 事件：MouseButtonRightDown()
-- 事件说明：按下鼠标右键时，触发此事件
-- 代码说明：观察鼠标右键按下事件是否会触发
-- 代码示例：
Mouse.MouseButtonRightDown:Connect(function() -- 鼠标按下鼠标右键事件注册
	print("触发鼠标点击右键事件")
end)

-- 事件：MouseButtonRightUp()
-- 事件说明：抬起鼠标右键时，触发此事件
-- 代码说明：观察鼠标右键抬起事件是否会触发
-- 代码示例：
Mouse.MouseButtonRightUp:Connect(function() -- 鼠标抬起鼠标右键事件注册
	print("触发鼠标点击右键事件")
end)

-- 事件：MouseRightPress()
-- 事件说明：点击鼠标右键时，触发此事件
-- 代码说明：观察鼠标右键持续点击事件是否会触发
-- 代码示例：
Mouse.MouseRightPress:Connect(function()  -- 鼠标点击鼠标右击事件注册
	print("触发鼠标持续点击右键事件")
end)

-- 事件：MouseScroll()
-- 事件说明：滚动鼠标滚轮时，触发此事件
-- 代码说明：观察鼠标滚轮事件是否会触发
-- 代码示例：
Mouse.MouseScroll:Connect(function() -- 鼠标滚动鼠标滚轮事件注册
	print("触发滚动鼠标滚轮事件")
end)

-- 事件：MouseWheelForward()
-- 事件说明：向前滚动鼠标滚轮时，触发此事件
-- 代码说明：观察鼠标向前滚轮事件是否会触发
-- 代码示例：
Mouse.MouseWheelForward:Connect(function() -- 鼠标向前滚动鼠标滚轮事件注册
	print("触发向前滚动鼠标滚轮事件")
end)

-- 事件：MouseWheelBackward()
-- 事件说明：向后滚动鼠标滚轮时，触发此事件
-- 代码说明：观察鼠标向后滚轮事件是否会触发
-- 代码示例：
Mouse.MouseWheelBackward:Connect(function() -- 鼠标向后滚动鼠标滚轮事件注册
	print("触发向后滚动鼠标滚轮事件")
end)

-- 事件：MouseScrollDown()
-- 事件说明：鼠标滚轮被按下时，触发此事件
-- 代码说明：观察鼠标滚轮被按下事件是否会触发
-- 代码示例：
Mouse.MouseScrollDown:Connect(function() -- 鼠标滚轮被按下事件注册
	print("触发鼠标滚轮被按下事件")
end)

-- 事件：MouseScrollUp()
-- 事件说明：鼠标滚轮被抬起时，触发此事件
-- 代码说明：观察鼠标滚轮被抬起事件是否会触发
-- 代码示例：
Mouse.MouseScrollUp:Connect(function() -- 鼠标滚轮被抬起事件注册
	print("触发鼠标滚轮被抬起事件")
end)

-- 事件：MouseScrollPress()
-- 事件说明：点击鼠标滚轮时，触发此事件
-- 代码说明：观察鼠标滚轮持续被按下事件是否会触发
-- 代码示例：
Mouse.MouseScrollPress:Connect(function() -- 鼠标点击鼠标滚轮事件注册
	print("触发鼠标滚轮持续被按下事件")
end)

<<<<<有问题>>>>>
-- 事件：MouseIdle()
-- 事件说明：鼠标静止不动时，触发此事件
-- 代码说明：观察鼠标静止不动事件是否会触发
-- 代码示例：
Mouse.MouseIdle:Connect(function() -- 鼠标静止不动事件注册
	print("触发鼠标静止不动事件")
end)
-- 备注：静止不动使无法触发，操作鼠标会触发