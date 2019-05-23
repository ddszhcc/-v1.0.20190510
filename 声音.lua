-- 函数：Pause()
-- 函数说明：暂停播放当前声音
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后暂停播放当前声音
-- 代码示例：
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false 
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK" -- 路径赋值
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Pause() -- 声音暂停

-- 函数：Play()
-- 函数说明：播放当前声音，如果声音处于暂停状态，会继续播放
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后暂停播放当前声音,3秒后播放，观察音乐是否继续播放
-- 代码示例：
local AS = RWObject.Create("AudioSource")  -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Pause() -- 等待2
wait(3) -- 等待3
AS:Play() -- 声音播放

-- 函数：Stop()
-- 函数说明：停止播放当前声音
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后停止播放
-- 代码示例：
local AS = RWObject.Create("AudioSource")  -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Stop() -- 声音停止

<<<<<有问题>>>>>
-- 事件：SoundEnded()
-- 事件说明：声音对象被停止，或完成播放时，触发此事件
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后停止播放，观察事件是否被触发
-- 代码示例：
function SoundEndedEvent() -- 声音被停止时方法定义
	print("触发暂停播放/或者是播放完毕事件")
end
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS.SoundEnded:Connect(SoundEndedEvent) -- 声音被停止事件注册
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Stop() -- 声音停止
-- 备注：播放完毕的事件没测

-- 事件：SoundPaused()
-- 事件说明：声音对象被暂停播放时，触发此事件
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后停止播放，观察事件是否被触发
-- 代码示例：
function SoundEndedEvent() --声音对象被暂停方法定义
	print("触发暂停播放事件")
end
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS.SoundPaused:Connect(SoundEndedEvent) -- 声音对象被暂停事件注册
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Pause() -- 声音暂停

-- 事件：SoundPlayed()
-- 事件说明：声音对象被播放时，触发此事件
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，观察音乐播放事件是否被触发
-- 代码示例：
function SoundPlayEvent() -- 声音对象被播放时方法定义
	print("触发声音播放事件")
end
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS.SoundPlayed:Connect(SoundPlayEvent) -- 声音对象被播放事件注册
AS:Play() -- 声音播放
-- 事件：SoundResumed()
-- 事件说明：处于暂停状态下的声音对象被播放时，触发此事件
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后暂停，观察音乐暂停状态下播放事件是否被触发
-- 代码示例：
function SoundEvent() -- 处于暂停状态下的声音对象被播放时方法定义
	print("触发暂停播放又播放事件")
end
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK"  -- 路径赋值
AS.SoundResumed:Connect(SoundEvent) -- 处于暂停状态下的声音对象被播放事件注册
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Pause() -- 声音暂停
wait(2) -- 等待2
AS:Play() -- 声音播放

-- 事件：SoundStopped()
-- 事件说明：声音对象被停止时，触发此事件
-- 代码说明：创建一个Audiosource播放器，将音乐的路径赋值并播放，2秒后停止播放音乐，观察音乐停止播放状态下事件是否被触发
-- 代码示例：
function SoundEvent() -- 声音对象被停止时方法定义
	print("触发停止播放事件")
end
local AS = RWObject.Create("AudioSource") -- 创建播放器
AS.PlayOnAwake =false
AS.AudioClip = "rwid://L1vtZTBThT1RCvBVdK" -- 路径赋值
AS.SoundStopped:Connect(SoundEvent) -- 声音对象被停止时方法事件注册
AS:Play() -- 声音播放
wait(2) -- 等待2
AS:Stop() -- 声音停止
