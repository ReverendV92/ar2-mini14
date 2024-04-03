// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 GB rail mount.mdl"

$bodygroup "Body"
{
	studio "mini14sight2.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.589 -4.537 2.469

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 0 -0.737 0 9.324 1.915 5.189


$sequence "Idle" {
	"ruger mini-14 gb rail mount_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 gb rail mount_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 7

}
