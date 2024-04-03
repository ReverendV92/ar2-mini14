// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 GB polymer magazine.mdl"

$bodygroup "magazine"
{
	studio "mini14mag5.smd"
	studio "mini14mag6.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -7.209 -0.076

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 5.009 -0.861 -3.908 9.481 0.886 3.647


$sequence "Idle" {
	"ruger mini-14 gb polymer magazine_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 gb polymer magazine_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 32

}
