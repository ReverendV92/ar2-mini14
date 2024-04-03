// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Aimpoint Micro T-1.mdl"

$bodygroup "Body"
{
	studio "vz61_sight3.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -0.313 -5.316 3.436

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 0 -1.572 0 10.883 0.929 7.122


$sequence "Idle" {
	"aimpoint micro t-1_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "aimpoint micro t-1_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 15

}
