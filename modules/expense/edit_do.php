<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_POST["expense_edit"])){
	extract($_POST);
	$err="";
	if(empty($datetime_added) || empty($amount))
		$err="Fields with (*) are Mandatory.<br />";
	if($err==""){
		$sql="Update expense set `wing_id`='".slash($wing_id)."', `code`='".slash($code)."', `branch_name`='".slash($branch_name)."', `datetime_added`='".slash(datetime_dbconvert($datetime_added))."',`voucher_no`='".slash($voucher_no)."',`major_head`='".slash($major_head)."',`sub_head`='".slash($sub_head)."',`vendor`='".slash($vendor)."',`payee`='".slash($payee)."',`details`='".slash($details)."',`amount`='".slash($amount)."',`income_tax`='".slash($income_tax)."',`income_tax_deducted`='".slash($income_tax_deducted)."',`cheque_amount`='".slash($cheque_amount)."',`cheque_date`='".date_dbconvert($cheque_date)."',`cheque_number`='".slash($cheque_number)."'"." where id='".$id."'";
		doquery($sql,$dblink);
		unset($_SESSION["expense_manage"]["edit"]);
		header('Location: expense_manage.php?tab=list&msg='.url_encode("Successfully Updated"));
		die;
	}
	else{
		foreach($_POST as $key=>$value)
			$_SESSION["expense_manage"]["edit"][$key]=$value;
		header("Location: expense_manage.php?tab=edit&err=".url_encode($err)."&id=$id");
		die;
	}
}
/*----------------------------------------------------------------------------------*/
if(isset($_GET["id"]) && $_GET["id"]!=""){
	$rs=doquery("select * from expense where id='".slash($_GET["id"])."'",$dblink);
	if(numrows($rs)>0){
		$r=dofetch($rs);
		foreach($r as $key=>$value)
			$$key=htmlspecialchars(unslash($value));
			$datetime_added=datetime_convert($datetime_added);
			$cheque_date=date_convert($cheque_date);
		if(isset($_SESSION["expense_manage"]["edit"]))
			extract($_SESSION["expense_manage"]["edit"]);
	}
	else{
		header("Location: expense_manage.php?tab=list");
		die;
	}
}
else{
	header("Location: expense_manage.php?tab=list");
	die;
}