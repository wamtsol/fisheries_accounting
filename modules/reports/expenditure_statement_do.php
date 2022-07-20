<?php
if(!defined("APP_START")) die("No Direct Access");
$extra='';
$is_search=true;
if(isset($_GET["date_from"])){
	$date_from=slash($_GET["date_from"]);
	$_SESSION["reports"]["expenditure_statement"]["date_from"]=$date_from;
}
if(isset($_SESSION["reports"]["expenditure_statement"]["date_from"]))
	$date_from=$_SESSION["reports"]["expenditure_statement"]["date_from"];
else
	$date_from="";
if(isset($_GET["date_to"])){
	$date_to=slash($_GET["date_to"]);
	$_SESSION["reports"]["expenditure_statement"]["date_to"]=$date_to;
}
if(isset($_SESSION["reports"]["expenditure_statement"]["date_to"]))
	$date_to=$_SESSION["reports"]["expenditure_statement"]["date_to"];
else
	$date_to="";
if(isset($_GET["wing_id"])){
	$wing_id=slash($_GET["wing_id"]);
	$_SESSION["reports"]["expenditure_statement"]["wing_id"]=$wing_id;
}
if(isset($_SESSION["reports"]["expenditure_statement"]["wing_id"]))
	$wing_id=$_SESSION["reports"]["expenditure_statement"]["wing_id"];
else
	$wing_id="";
if( !empty( $date_from ) && !empty( $date_from ) ) {
	$extra.=" and b.datetime_added BETWEEN '".date('Y-m-d',strtotime(date_dbconvert($date_from)))." 00:00:00' AND '".date('Y-m-d',strtotime(date_dbconvert($date_to)))." 23:59:59'";
}
if( !empty( $wing_id ) ) {
	$extra.="and a.wing_id = '".$wing_id."'";
}
else {
	$wing_id = "";
}
$order_by = "title";
$order = "asc";
if( isset($_GET["order_by"]) ){
	$_SESSION["reports"]["expenditure_statement"]["order_by"]=slash($_GET["order_by"]);
}
if( isset( $_SESSION["reports"]["expenditure_statement"]["order_by"] ) ){
	$order_by = $_SESSION["reports"]["expenditure_statement"]["order_by"];
}
if( isset($_GET["order"]) ){
	$_SESSION["reports"]["expenditure_statement"]["order"]=slash($_GET["order"]);
}
if( isset( $_SESSION["reports"]["expenditure_statement"]["order"] ) ){
	$order = $_SESSION["reports"]["expenditure_statement"]["order"];
}
$orderby = $order_by." ".$order;
$sql = "select a.*, b.amount as releases, c.amount as expenditure from account a left join transaction b on a.id = b.account_id left join expense c on a.id = c.major_head where a.status = 1 $extra and parent_id = 0 group by a.id order by title asc";
// $main_sql = array();
//$main_sql[] = "select datetime_added as date, concat( 'Paid Salary to ', name ) as details, 0 as debit, amount as credit from employee_salary_payment a left join employee b on a.employee_id=b.id where a.status=1".(!empty($account_id)?" and account_id='".$account_id."'":"");
// $main_sql[] = "select datetime_added as date, concat( 'Payment from Project ', title ) as details, amount as debit, 0 as credit from project_payment a left join project b on a.project_id=b.id where a.status=1".(!empty($account_id)?" and account_id='".$account_id."'":"");
// $main_sql[] = "select datetime_added as date, if(details='', concat( 'Paid ', title ), concat(title, ': ', details)) as details, 0 as debit, amount as credit from expense a left join expense_category b on a.expense_category_id=b.id where a.status=1".(!empty($account_id)?" and sub_head='".$account_id."'":"");
// $main_sql[] = "select datetime_added as date, if(details='', concat( 'Transfer from account ', title ), details) as details, amount as debit, 0 as credit from transaction a left join account b on a.reference_id=b.id where a.status=1".(!empty($account_id)?" and account_id='".$account_id."'":"");
// $main_sql[] = "select datetime_added as date, if(details='', concat( 'Transfer to account ', title ), concat(title, ': ', details)) as details, 0 as debit, amount as credit from transaction a left join account b on a.account_id=b.id where a.status=1".(!empty($account_id)?" and reference_id='".$account_id."'":"");
// $main_sql="(".implode( ' union ', $main_sql ).") as total_records";
// $sql = "select * from ".$main_sql." where 1 $extra order by $orderby, details $order";

// $balance = dofetch( doquery( "select sum(debit)-sum(credit) as balance from ".$main_sql." where date < '".date('Y-m-d',strtotime(date_dbconvert($date_from)))." 00:00:00'", $dblink ) );
// if( $order == 'desc' ) {
// 	$balance = get_account_balance( $account_id, date_dbconvert($date_to)." 23:59:59" );
// }
// else{
// 	$balance = get_account_balance( $account_id, date_dbconvert($date_from) );
// }
