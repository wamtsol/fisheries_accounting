<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_POST["account_add"])){
	extract($_POST);
	$err="";
	if(empty($title))
		$err="Fields with (*) are Mandatory.<br />";
	if($err==""){
		$sql="INSERT INTO account (code,title, wing_id, parent_id, balance) VALUES ('".slash($code)."','".slash($title)."', '".slash($wing_id)."', '".slash($parent_id)."', '".slash($balance)."')";
		doquery($sql,$dblink);
		unset($_SESSION["account_manage"]["add"]);
		header('Location: account_manage.php?tab=list&msg='.url_encode("Successfully Added"));
		die;
	}
	else{
		foreach($_POST as $key=>$value)
			$_SESSION["account_manage"]["add"][$key]=$value;
		header('Location: account_manage.php?tab=add&err='.url_encode($err));
		die;
	}
}