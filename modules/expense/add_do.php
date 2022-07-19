<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_POST["expense_add"])){
	extract($_POST);
	$err="";
	if(empty($datetime_added) || empty($amount))
		$err="Fields with (*) are Mandatory.<br />";
	if($err==""){
		$sql="INSERT INTO expense (wing_id, branch_name, datetime_added, voucher_no, major_head, sub_head, payee, details, amount, income_tax, income_tax_deducted, cheque_amount, cheque_date, cheque_number, added_by) VALUES ('".slash($wing_id)."', '".slash($branch_name)."', '".slash(datetime_dbconvert($datetime_added))."', '".slash($voucher_no)."', '".slash($major_head)."', '".slash($sub_head)."', '".slash($payee)."', '".slash($details)."','".slash($amount)."', '".slash($income_tax)."', '".slash($income_tax_deducted)."', '".slash($cheque_amount)."', '".date_dbconvert($cheque_date)."', '".slash($cheque_number)."','".$_SESSION["logged_in_admin"]["id"]."')";
		doquery($sql,$dblink);
		unset($_SESSION["expense_manage"]["add"]);
		header('Location: expense_manage.php?tab=list&msg='.url_encode("Successfully Added"));
		die;
	}
	else{
		foreach($_POST as $key=>$value)
			$_SESSION["expense_manage"]["add"][$key]=$value;
		header('Location: expense_manage.php?tab=add&err='.url_encode($err));
		die;
	}
}