// Created by Crowbar 0.74

$modelname "kouoaeha\weapons\Ruger Mini-14 GB-F.mdl"

$bodygroup "Body"
{
	studio "mini14base.smd"
}
$bodygroup "Body"
{
	studio "mini14stockf.smd"
}
$bodygroup "bolt"
{
	studio "mini14bolt.smd"
	studio "mini14bolt2.smd"
	studio "mini14bolt3.smd"
}
$bodygroup "magazine"
{
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
	studio "mini14stockfold.smd"
	studio "mini14stockfold2.smd"
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

$illumposition -0.207 -9.132 1.709

$ambientboost

$mostlyopaque

$cdmaterials "models\kouoaeha\weapons\"

$cbox 0 0 0 0 0 0

$bbox -10.523 -2.079 -3.693 29.104 1.665 7.112


$sequence "Idle" {
	"ruger mini-14 gb-f_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ruger mini-14 gb-f_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 12

}
