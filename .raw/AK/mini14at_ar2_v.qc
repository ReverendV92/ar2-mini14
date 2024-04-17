
$modelname weapons/v_irifle

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

$sequence "IR_idle" {
	"idle"
	activity "ACT_VM_IDLE" 1
	fps 15
	loop
}

$sequence "IR_fire" {
	"fire_mini14"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "0" }
	snap
	fps 30
	node fire
}

$sequence "fire2" {
	"fire_mini14"
	activity "ACT_VM_RECOIL1" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "0" }
	snap
	fps 30
	node fire
}

$sequence "fire3" {
	"fire_mini14"
	activity "ACT_VM_RECOIL2" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "0" }
	snap
	fps 30
}

$sequence "fire4" {
	"fire_mini14"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "0" }
	snap
	fps 30
}

$sequence "IR_fire2" {
	"fire_mini14"
	frames 0 1
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 6001 0 "0" }
	snap
	fps 30
	node fire
}

$sequence "IR_reload" {
	"reload_mini14"
	// activity "ACT_VM_RELOAD" 1
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event AE_CL_PLAYSOUND 21 "Weapon_AR2.Reload_Rotate" } //Weapon_AK47.Clipout
	{ event AE_CL_PLAYSOUND 55 "Weapon_AR2.Reload_Push" } //Weapon_AK47.Clipin
	fps 37
}

$sequence "IR_reload_empty" {
	"reload_empty_mini14"
	// activity "ACT_VM_RELOAD_EMPTY" 1
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 16 "Weapon_AR2.Reload_Rotate" } //Weapon_AK47.Clipout
	{ event AE_CL_PLAYSOUND 47 "Weapon_AR2.Reload_Push" } //Weapon_AK47.Clipin
	{ event AE_CL_PLAYSOUND 65 "Weapon_AR2.BoltPull" }
	fps 37
}

$sequence "IR_draw" {
	"draw_mini14"
	activity "ACT_VM_DRAW" 1
	fps 30
}

$sequence "IR_holster" {
	"draw_mini14"
	reverse
	activity "ACT_VM_HOLSTER" 1
	fps 30
}

$sequence "shake" {
	"idle"
	frames 0 1
	activity "ACT_VM_FIDGET" 1
	fps 60
}

$sequence "inspect" {
	"inspect"
	activity "ACT_VM_INSPECT" 1
	fadein 0.3
	fadeout 0.3
	fps 30
}
