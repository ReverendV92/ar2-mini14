// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 GB magazine.mdl"

$bodygroup "magazine"
{
	studio "mini14mag.smd"
	studio "mini14mag2.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -6.851 0.91

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 5.041 -0.697 -1.991 8.67 0.704 3.751


$sequence "Idle" {
	"ruger mini-14 gb magazine_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 gb magazine_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
