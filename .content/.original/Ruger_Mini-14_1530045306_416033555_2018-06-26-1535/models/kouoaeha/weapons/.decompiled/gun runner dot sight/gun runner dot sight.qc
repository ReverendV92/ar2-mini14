// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Gun Runner Dot Sight.mdl"

$bodygroup "Body"
{
	studio "mini14sight3.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.074 -4.428 3.556

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 0 -1.103 0 9.105 1.251 7.362


$sequence "Idle" {
	"gun runner dot sight_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "gun runner dot sight_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
