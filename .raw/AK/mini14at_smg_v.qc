
$origin 0 0 -1 0

$modelname weapons/v_smg1

$model Mini14 mini14at_ref
$model HEV hands_reference

$surfaceprop weapon

$contents notsolid

$illumposition -2.423 -23.046 -9.328

$cdmaterials models/v92/weapons/mini14
$cdmaterials models/weapons/v_hand

$attachment "muzzle" "muzzleflash" 0 0 0 rotate 0 -90 0
$attachment "1" "ejection" 0 0 0 rotate 0 0 0

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$sequence "idle01" {
	"idle"
	activity "ACT_VM_IDLE" 1
	fps 15
	loop
}

$sequence "fire01" {
	"fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "1" }
	snap
	fps 30
	node fire
}

$sequence "fire02" {
	"fire"
	activity "ACT_VM_RECOIL1" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "1" }
	snap
	fps 30
	node fire
}

$sequence "fire03" {
	"fire"
	activity "ACT_VM_RECOIL2" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "1" }
	snap
	fps 30
}

$sequence "fire04" {
	"fire"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "1" }
	snap
	fps 30
}

$sequence "altfire" {
	"fire"
	frames 0 1
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "1" }
	snap
	fps 30
	node fire
}

$sequence "reload" {
// original 47 frames @ 30 fps = 1.5666
	"reload"
	activity "ACT_VM_RELOAD" 1
	// activity "ACT_VM_RELOAD_EMPTY" 1
	// { event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Reload" }
	fps 57
}

$sequence "reload_empty" {
	"reload_empty"
	// activity "ACT_VM_RELOAD" 1
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special2" }
	fps 57
}

$sequence "draw" {
// original 25 frames @ 30 fps = 0.8333
	"draw"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special1" }
	fps 36 
}

$sequence "holster" {
// original 25 frames @ 30 fps = 0.8333
	"holster"
	activity "ACT_VM_HOLSTER" 1
	{ event AE_CL_PLAYSOUND 0 "Weapon_SMG1.Special1" }
	fps 36
}

$sequence "inspect" {
	"inspect"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
}

$sequence idletolow { 
	"idle_to_low" 
	fps 30 
	activity ACT_VM_LOWERED_TO_IDLE 1  
	transition Ready Low 
}
$sequence lowtoidle "low_to_idle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "lowidle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low