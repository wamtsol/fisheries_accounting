<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_SESSION["transaction_manage"]["add"])){
	extract($_SESSION["transaction_manage"]["add"]);	
}
else{
	$wing_id="";
    $account_id="";
	$reference_id="";
	$datetime_added=date("d/m/Y H:i A");
	$amount="";
    $details="";
    $cheque_number="";
}
?>
<div class="page-header">
	<h1 class="title">Add New Release</h1>
  	<ol class="breadcrumb">
    	<li class="active">
            Manage Release
        </li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> <a href="transaction_manage.php" class="btn btn-light editproject">Back to List</a> </div>
  	</div>
</div>
<form class="form-horizontal form-horizontal-left" role="form" action="transaction_manage.php?tab=add" method="post" enctype="multipart/form-data" name="frmAdd" >
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="wing_id">Wing</label>
            </div>
            <div class="col-sm-10">
                <select name="wing_id" title="Choose Option">
                    <option value="0">Select Wing</option>
                    <?php
                    $res=doquery("select * from wing where status=1 order by title", $dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($wing_id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"]); ?></option>
                     	<?php			
                        }			
                    }
                    ?>
                </select>
            </div>
        </div>
  	</div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="account_id">Major Head <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
                <select name="account_id" title="Choose Option">
                    <option value="0">Select Major Head</option>
                    <?php
                    $res=doquery("select * from account where status = 1 and parent_id = 0 order by title",$dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($account_id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"]); ?></option>
                     	<?php			
                        }			
                    }
                    ?>
                </select>
            </div>
        </div>
  	</div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="reference_id">Sub Head <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
            	<select name="reference_id" id="reference_id" title="Choose Option">
                    <option value="0">Select Sub Head</option>
                    <?php
                    $res=doquery("select * from account where status = 1 and parent_id !=0 order by title",$dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($reference_id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"]); ?></option>
                     	<?php			
                        }			
                    }
                    ?>
                </select>
            </div>
        </div>
  	</div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="title">Code </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter The Code"   name="code" id="code" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	 <div class="col-sm-2 control-label">
            	<label class="form-label" for="datetime_added">Date of Release</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Date/Time" value="<?php echo $datetime_added; ?>" name="datetime_added" id="datetime_added" class="form-control date-timepicker" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="amount">Amount </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Amount" value="<?php echo $amount; ?>" name="amount" id="amount" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="details">Details </label>
            </div>
            <div class="col-sm-10">
                <textarea title="Enter Details" name="details" id="details" class="form-control"><?php echo $details;?></textarea>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="cheque_number">Cheque Number </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Cheque Number" value="<?php echo $cheque_number; ?>" name="cheque_number" id="cheque_number" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label for="company" class="form-label"></label>
            </div>
            <div class="col-sm-10">
                <input type="submit" value="SUBMIT" class="btn btn-default btn-l" name="transaction_add" title="Submit Record" />
            </div>
        </div>
  	</div>  
</form>