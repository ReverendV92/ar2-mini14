// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 Butler Creek Stock.mdl"

$bodygroup "Body"
{
	studio "mini14base.smd"
}
$bodygroup "Body"
{
	studio "mini14stockb.smd"
}
$bodygroup "bolt"
{
	studio "mini14bolt.smd"
	studio "mini14bolt2.smd"
	studio "mini14bolt3.smd"
}
$bodygroup "magazine"
{
	studio "mini14mag5.smd"
	studio "mini14mag6.smd"
	studio "mini14mag.smd"
	studio "mini14mag2.smd"
	studio "mini14mag3.smd"
	studio "mini14mag4.smd"
	blank
}
$bodygroup "magazinerelease"
{
	studio "mini14release.smd"
	studio "mini14release2.smd"
}
$bodygroup "safety"
{
	studio "mini14safety.smd"
	studio "mini14safety2.smd"
}
$bodygroup "trigger"
{
	studio "mini14trigger.smd"
	studio "mini14trigger2.smd"
}
$bodygroup "stock"
{
	studio "mini14stockbfold.smd"
	studio "mini14stockbfold2.smd"
}
$bodygroup "sights"
{
	blank
	studio "mini14sight.smd"
	studio "mini14sight2.smd"
	studio "mini14scope.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -0.153 -9.048 1.696

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox -10.691 -1.97 -3.72 29.104 1.665 7.112


$sequence "Idle" {
	"ruger mini-14 butler creek stock_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 butler creek stock_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 12

}
