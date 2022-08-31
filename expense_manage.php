<?php
include("include/db.php");
include("include/utility.php");
include("include/session.php");
include("include/paging.php");
define("APP_START", 1);
$filename = 'expense_manage.php';
include("include/admin_type_access.php");
$tab_array=array("list", "add", "edit", "status", "delete", "bulk_action", "print", "voucher", "csv_report", "get_code");
if(isset($_REQUEST["tab"]) && in_array($_REQUEST["tab"], $tab_array)){
	$tab=$_REQUEST["tab"];
}
else{
	$tab="list";
}
$extra='';
$is_search=false;
if( isset($_GET["date_from"]) ){
	$_SESSION["expense"]["list"]["date_from"] = $_GET["date_from"];
}
if(isset($_SESSION["expense"]["list"]["date_from"]) && !empty($_SESSION["expense"]["list"]["date_from"])){
	$date_from = $_SESSION["expense"]["list"]["date_from"];
}
else{
	$date_from = "";
}
if( !empty($date_from) ){
	$extra.=" and datetime_added>='".date("Y/m/d H:i:s", strtotime(date_dbconvert($date_from)))."'";
	$is_search=true;
}
if( isset($_GET["date_to"]) ){
	$_SESSION["expense"]["list"]["date_to"] = $_GET["date_to"];
}
if(isset($_SESSION["expense"]["list"]["date_to"]) && !empty($_SESSION["expense"]["list"]["date_to"])){
	$date_to = $_SESSION["expense"]["list"]["date_to"];
}
else{
	$date_to = "";
}
if( !empty($date_to) ){
	$extra.=" and datetime_added<'".date("Y/m/d", strtotime(date_dbconvert($date_to))+3600*24)."'";
	$is_search=true;
}
if(isset($_GET["major_head"])){
	$major_head=slash($_GET["major_head"]);
	$_SESSION["expense"]["list"]["major_head"]=$major_head;
}
if(isset($_SESSION["expense"]["list"]["major_head"]))
	$major_head=$_SESSION["expense"]["list"]["major_head"];
else
	$major_head="";
if($major_head!=""){
	$extra.=" and major_head='".$major_head."'";
	$is_search=true;
}
if(isset($_GET["sub_head"])){
	$sub_head=slash($_GET["sub_head"]);
	$_SESSION["expense"]["list"]["sub_head"]=$sub_head;
}
if(isset($_SESSION["expense"]["list"]["sub_head"]))
	$sub_head=$_SESSION["expense"]["list"]["sub_head"];
else
	$sub_head="";
if($sub_head!=""){
	$extra.=" and sub_head='".$sub_head."'";
	$is_search=true;
}
if(isset($_GET["wing_id"])){
	$wing_id=slash($_GET["wing_id"]);
	$_SESSION["expense"]["list"]["wing_id"]=$wing_id;
}
if(isset($_SESSION["expense"]["list"]["wing_id"]))
	$wing_id=$_SESSION["expense"]["list"]["wing_id"];
else
	$wing_id="";
if($wing_id!=""){
	$extra.=" and wing_id='".$wing_id."'";
	$is_search=true;
}
$sql="select * from expense where 1 $extra order by voucher_no asc";

switch($tab){
	case 'add':
		include("modules/expense/add_do.php");
	break;
	case 'edit':
		include("modules/expense/edit_do.php");
	break;
	case 'delete':
		include("modules/expense/delete_do.php");
	break;
	case 'status':
		include("modules/expense/status_do.php");
	break;
	case 'bulk_action':
		include("modules/expense/bulkactions.php");
	break;
	case 'print':
		include("modules/expense/print_do.php");
	break;
	case 'voucher':
		include("modules/expense/voucher.php");
	break;
	case 'csv_report':
		include("modules/expense/report_csv.php");
	break;
	case "get_code":
		if(isset($_GET["id"])){
			$not_found = true;
			if(isset($_GET['transcationid']) && $_GET['transcationid'] > 0){
				$getCode=doquery("select code from expense where sub_head='".slash($_GET["id"])."' and id = '".slash($_GET[ "transcationid" ])."'", $dblink);
				if(numrows($getCode) > 0){
					$not_found = false;
					$getCode=dofetch($getCode);	
					echo $getCode['code'];
				}
			}
			if($not_found){
				$r=dofetch(doquery("select code from account where id='".slash($_GET["id"])."'", $dblink));
				echo $r["code"];
			}
		}
		die;
	break;
	case "get_vendor":
		if(isset($_GET["id"])){
			$not_found = true;
			if(isset($_GET['transcationid']) && $_GET['transcationid'] > 0){
				$getCode=doquery("select incom_tax from expense where vendor='".slash($_GET["id"])."' and id = '".slash($_GET[ "transcationid" ])."'", $dblink);
				if(numrows($getCode) > 0){
					$not_found = false;
					$getCode=dofetch($getCode);	
					echo $getCode['code'];
				}
			}
			if($not_found){
				$r=dofetch(doquery("select incom_tax from vendor where id='".slash($_GET["id"])."'", $dblink));
				echo $r["code"];
			}
		}
		die;
	break;
	
}
?>
<?php include("include/header.php");?>
	<div class="container-widget row">
    	<div class="col-md-12">
		  <?php
            switch($tab){
                case 'list':
                    include("modules/expense/list.php");
                break;
                case 'add':
                    include("modules/expense/add.php");
                break;
                case 'edit':
                    include("modules/expense/edit.php");
                break;
            }
          ?>
    	</div>
  	</div>
</div>
<?php include("include/footer.php");?>