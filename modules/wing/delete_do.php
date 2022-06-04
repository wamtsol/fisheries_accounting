<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_GET["id"]) && !empty($_GET["id"])){
	doquery("delete from wing where id='".slash($_GET["id"])."'",$dblink);
	header("Location: wing_manage.php");
	die;
}