<?php
include("include/db.php");
include("include/utility.php");
include("include/session.php");
include("include/paging.php");
define("APP_START", 1);
$filename = 'account_manage.php';
include("include/admin_type_access.php");
$tab_array=array("list", "add", "edit", "status", "delete", "bulk_action");
if(isset($_REQUEST["tab"]) && in_array($_REQUEST["tab"], $tab_array)){
	$tab=$_REQUEST["tab"];
}
else{
	$tab="list";
}
$q="";
$extra='';
$is_search=false;
if(isset($_GET["q"])){
	$q=slash($_GET["q"]);
	$_SESSION["account_manage"]["q"]=$q;
}
if(isset($_SESSION["account_manage"]["q"]))
	$q=$_SESSION["account_manage"]["q"];
else
	$q="";
if(!empty($q)){
	$extra.=" and title like '%".$q."%'";
	$is_search=true;
}
if(isset($_GET["wing_id"])){
	$wing_id=slash($_GET["wing_id"]);
	$_SESSION["account_manage"]["wing_id"]=$wing_id;
}
if(isset($_SESSION["account_manage"]["wing_id"]))
	$wing_id=$_SESSION["account_manage"]["wing_id"];
else
	$wing_id="";
if($wing_id!=""){
	$extra.=" and wing_id='".$wing_id."'";
	$is_search=true;
}
$sql="select * from account where 1 $extra and parent_id!=0 order by parent_id";
switch($tab){
	case 'add':
		include("modules/account/add_do.php");
	break;
	case 'edit':
		include("modules/account/edit_do.php");
	break;
	case 'delete':
		include("modules/account/delete_do.php");
	break;
	case 'status':
		include("modules/account/status_do.php");
	break;
	case 'bulk_action':
		include("modules/account/bulkactions.php");
	break;
}
?>
<?php include("include/header.php");?>
	<div class="container-widget row">
    	<div class="col-md-12">
		  <?php
            switch($tab){
                case 'list':
                    include("modules/account/list.php");
                break;
                case 'add':
                    include("modules/account/add.php");
                break;
                case 'edit':
                    include("modules/account/edit.php");
                break;
            }
          ?>
    	</div>
  	</div>
</div>
<?php include("include/footer.php");?>