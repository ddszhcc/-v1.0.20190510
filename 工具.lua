<<<<<有问题>>>>>
-- 事件：UnEquip()
-- 事件说明：工具对象自身被卸下时触发
-- 代码说明：手动创建一个角色和一个工具，使角色自动装备工具，过两秒后卸载掉自身佩戴工具，观察工具被卸载事件是否被触发
-- 代码示例：
wait(1) -- 等待1
local person = WorkSpace[123] -- 获取工作区下的角色
local tool = WorkSpace.工具 -- 获取工作区下的工具
wait(1) -- 等待1
person:EquipTool(tool) -- 角色装备工具
tool.UnEquip:Connect(function() -- 工具注册工具被卸载事件
	print("触发工具被卸载事件")
end)
wait(2) -- 等待2
person:UnEquipTool() -- 角色卸下工具
-- 备注：如果是手动在界面创建好的角色和工具，可以触发卸载事件,但是代码里创建的角色和工具自动装备工具装备不了

-- 事件：Equip()
-- 事件说明：工具对象自身被装备时触发
-- 代码说明：手动创建一个角色和一个工具，使角色自动装备工具，观察工具被装备事件是否被触发
-- 代码示例：
wait(1) -- 等待1
local person = WorkSpace[123] -- 获取工作区下的角色
local tool = WorkSpace.工具 -- 获取工作区下的工具
wait(1) -- 等待1
person:EquipTool(tool) -- 角色装备工具
tool.Equip:Connect(function() -- 工具注册被装备时的事件
	print("触发工具被装备事件")
end)
-- 备注：如果是手动在界面创建好的角色和工具，可以触发装备事件，如果是代码创建的工具或者代码创建的avarar都不可以自动装备，装备触发事件也不会执行


-- 事件：Drop()
-- 事件说明：工具对象自身从背包中移除时触发
-- 代码说明：手动创建一个角色和一个工具，使角色自动装备工具，然后手动移除背包中的装备工具，观察是否触发工具被移除事件
-- 代码示例：
wait(1) -- 等待1
local person = WorkSpace[123] -- 获取工作区下的角色
local tool = WorkSpace.工具 -- 获取工作区下的工作
wait(1) --等待
person:EquipTool(tool) -- 角色装备工具
tool.Drop:Connect(function() -- 工具注册工具被移除时的事件
	print("触发工具被移除事件")
end)
-- 备注：如果是代码创建的工具或者代码创建的avarar都不可以自动装备，触发事件也不会执行