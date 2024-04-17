
$ambientboost
$mostlyopaque

$modelname weapons/w_smg1

$model SMG1 mini14at_w_ref

$surfaceprop weapon

$contents solid

$illumposition 1.162 1.976 -1.269

$cdmaterials models/v92/weapons/mini14

$attachment "muzzle" "muzzleflash" 0 0 0 rotate 0 -90 0
$attachment "1" "ejection" 0 0 0 rotate 0 0 0

$sequence idle {
	idle
	activity "ACT_VM_IDLE" 1
	fps 30
	loop
	walkframe 1 LX
}

$sequence attack1 {
	fire
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "" }
	{ event 6001 0 "1" }
	fps 20
	walkframe 1 LX
}

$sequence attackoffcenter {
	fire
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "1" }
	fps 20
	walkframe 1 LX
}

$collisionmodel mini14at_ref
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
