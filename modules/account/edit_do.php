<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_POST["account_edit"])){
	extract($_POST);
	$err="";
	if(empty($title))
		$err="Fields with (*) are Mandatory.<br />";
	if($err==""){
		$sql="Update account set `code`='".slash($code)."',`title`='".slash($title)."', `wing_id`='".slash($wing_id)."', `parent_id`='".slash($parent_id)."', `balance`='".slash($balance)."' where id='".$id."'";
		doquery($sql,$dblink);
		unset($_SESSION["account_manage"]["edit"]);
		header('Location: account_manage.php?tab=list&msg='.url_encode("Successfully Updated"));
		die;
	}
	else{
		foreach($_POST as $key=>$value)
			$_SESSION["account_manage"]["edit"][$key]=$value;
		header("Location: account_manage.php?tab=edit&err=".url_encode($err)."&id=$id");
		die;
	}
}
/*----------------------------------------------------------------------------------*/
if(isset($_GET["id"]) && $_GET["id"]!=""){
	$rs=doquery("select * from account where id='".slash($_GET["id"])."'",$dblink);
	if(numrows($rs)>0){
		$r=dofetch($rs);
		foreach($r as $key=>$value)
			$$key=htmlspecialchars(unslash($value));
		if(isset($_SESSION["account_manage"]["edit"]))
			extract($_SESSION["account_manage"]["edit"]);
	}
	else{
		header("Location: account_manage.php?tab=list");
		die;
	}
}
else{
	header("Location: account_manage.php?tab=list");
	die;
}