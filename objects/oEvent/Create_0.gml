//__ProceedInit__ = 0
/// @desc 基础设置
EID = instance_number(oEvent)
chatterBox = new ChatterBox()
////temp
__collideObject = oPlayer
__collisionPrevious = 0
////选项
repeatable = true ///是否可重复
walkingAnim = 0 ///行走动画
steppingAnim = 0///原地动画
through = 0///是否可以穿过
directionFix = 0///方向固定
///贴图
sprite = sprite_index
sprites = [sprite_index,sprite_index,sprite_index,sprite_index]
sprIndex = 0
face = 0

////触发方式
enum Trigger {
autoRun,
playerTouch,
otherTouch,
actionButton,
parallelProcess
}
trigger = Trigger.actionButton
isPlaying = 0;//正在播放
////触发条件
selfSwitch = 0
conditions = 0
span  = -1 ///可触发次数
//function Proceed(){ CO_PARAMS._id = id; return CO_BEGIN PAUSE THEN
////如果进程是结束了，就重启
function ProceedRestart(){
	if proceed.GetComplete(){
		if  repeatable{
			proceed.Restart()
			return true
		}
	}
////如果暂停了，就继续
	if proceed.GetPaused(){
		proceed.Resume()

		return true
	}
	return false
}
