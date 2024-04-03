// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Gun Runner Telescopic Scope.mdl"

$bodygroup "Body"
{
	studio "mini14scope.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -0.007 -5.332 3.139

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 0 -1.085 0 10.914 1.071 6.501


$sequence "Idle" {
	"gun runner telescopic scope_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "gun runner telescopic scope_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 12

}
