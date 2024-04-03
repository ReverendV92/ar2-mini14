// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 GB extended magazine.mdl"

$bodygroup "magazine"
{
	studio "mini14mag3.smd"
	studio "mini14mag4.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -7.215 -0.063

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox 5.041 -0.697 -3.935 9.399 0.696 3.809


$sequence "Idle" {
	"ruger mini-14 gb extended magazine_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 gb extended magazine_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13

}
