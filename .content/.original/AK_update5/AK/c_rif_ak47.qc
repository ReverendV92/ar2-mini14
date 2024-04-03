
$modelname "weapons/zs/c_ak47_reanim.mdl"

$bodygroup "studio"
{
	studio "ak_ref.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.423 -23.046 -9.328

$cdmaterials "models\weapons\V_models\rif_ak47\"

$attachment "muzzle" "v_weapon.AK47_Parent" 0 3.87 -25.53 rotate 90 0 0
$attachment "eject" "v_weapon.AK47_Parent" 0 5.47 -5.33 rotate 0 165 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

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


$sequence "ak47_idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "ak47_inspect" {
	"inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
}

$sequence "ak47_fire1" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "ak47_fire2" {
	"fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "ak47_fire3" {
	"fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "ak47_draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ak47_reload_empty" {
	"reload.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 16 "Weapon_AK47.Clipout" }
	{ event 5004 47 "Weapon_AK47.Clipin" }
	{ event 5004 65 "Weapon_AK47.BoltPull" }
	fadein 0.2
	fadeout 0.2
	fps 37
}

$sequence "ak47_reload" {
	"reload_partial.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 21 "Weapon_AK47.Clipout" }
	{ event 5004 55 "Weapon_AK47.Clipin" }
	fadein 0.2
	fadeout 0.2
	fps 37
}

$sequence "ak47_reload_empty1" {
	"reload_under.smd"
	activity "ACT_VM_RELOAD_END" 1
	{ event 5004 16 "Weapon_AK47.Clipout" }
	{ event 5004 47 "Weapon_AK47.Clipin" }
	{ event 5004 65 "Weapon_AK47.BoltPull" }
	fadein 0.2
	fadeout 0.2
	fps 37
}

$sequence "ak47_reload_empty2" {
	"reload_alt2.smd"
	activity "ACT_VM_RELOAD2" 1
	{ event 5004 16 "Weapon_AK47.Clipout" }
	{ event 5004 47 "Weapon_AK47.Clipin" }
	{ event 5004 65 "Weapon_AK47.BoltPull" }
	fadein 0.2
	fadeout 0.2
	fps 37
}

$sequence "ak47_fire1_alt" {
	"fire1_alt.smd"
	activity "ACT_VM_RECOIL1" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "ak47_fire2_alt" {
	"fire2_alt.smd"
	activity "ACT_VM_RECOIL1" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "ak47_fire3_alt" {
	"fire3_alt.smd"
	activity "ACT_VM_RECOIL1" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}