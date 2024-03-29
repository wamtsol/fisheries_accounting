<?php
if(!defined("APP_START")) die("No Direct Access");
if(isset($_SESSION["expense_manage"]["add"])){
	extract($_SESSION["expense_manage"]["add"]);	
}
else{
    $wing_id="";
    $branch_name="";
	$datetime_added=date("d/m/Y H:i A");
	$voucher_no="";
    $code="";
	$major_head="";
    $sub_head="";
    $vendor="";
    $payee="";
	$details="";
    $amount="";
    $income_tax="";
    $income_tax_deducted="";
    $cheque_amount="";
    $cheque_date=date("d/m/Y");
    $cheque_number="";
}
?>
<div class="page-header">
	<h1 class="title">Add New Bank Payment Voucher</h1>
  	<ol class="breadcrumb">
    	<li class="active">
            Bank Payment Voucher
        </li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> <a href="expense_manage.php" class="btn btn-light editproject">Back to List</a> </div>
  	</div>
</div>
<form class="form-horizontal form-horizontal-left main_cont_exp" role="form" action="expense_manage.php?tab=add" method="post" enctype="multipart/form-data" name="frmAdd"  onSubmit="return checkFields();">
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
            	<label class="form-label" for="datetime_added">Date/Time <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter datetime" value="<?php echo $datetime_added; ?>" name="datetime_added" id="datetime_added" class="form-control date-timepicker" />
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="voucher_no">Voucher No </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Voucher" value="<?php echo $voucher_no; ?>" name="voucher_no" id="voucher_no" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="code">Code </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Code" value="<?php echo $code; ?>" name="code" id="code" class="form-control code" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="branch_name">Branch Name </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter branch name" value="<?php echo $branch_name; ?>" name="branch_name" id="branch_name" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="major_head">Major Head <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
                <select name="major_head" title="Choose Option">
                    <option value="0">Select Major Head</option>
                    <?php
                    $res=doquery("select * from account where status = 1 and parent_id = 0 order by title",$dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($major_head==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"]); ?></option>
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
                <label class="form-label" for="sub_head">Sub Head <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
            	<select name="sub_head" id="sub_head" class="select_multiple sub_head_exp" title="Choose Option">
                    <option value="0">Select Sub Head</option>
                    <?php
                    $res=doquery("select * from account where status = 1 and parent_id !=0 order by title",$dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($sub_head==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"])." (".get_field($rec["wing_id"], "wing", "title").")"; ?></option>
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
                <label class="form-label" for="vendor_head">Vendor<span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
            	  <select name="vendor" title="Choose Option" class="vedor_data">
                    <option value="0">Select Vendor</option>
                    <?php
                    $res=doquery("select * from vendor where status = 1 order by vendor",$dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?> "<?php echo($vendor==$rec["id"])?"selected":"";?>><?php echo unslash($rec["vendor"]); ?></option>
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
            	<label class="form-label" for="payee">Payee </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter payee" value="<?php echo $payee; ?>" name="payee" id="payee" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="details">Details </label>
            </div>
            <div class="col-sm-10">
                 <textarea title="Enter Details" value="" name="details" id="details" class="form-control" /><?php echo $details; ?></textarea>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="amount">Amount <span class="manadatory">*</span> </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Amount" value="<?php echo $amount; ?>" name="amount" id="amount" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="income_tax">Income Tax</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Income Tax" value="<?php echo $income_tax; ?>" name="income_tax" id="income_tax" class="form-control incom_tax" />
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="income_tax_deducted">Income Tax Deducted</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Income Tax Deduc" value="<?php echo $income_tax_deducted; ?>" name="income_tax_deducted" id="income_tax_deducted" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="cheque_amount">Cheque Amount</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Cheque Amount" value="<?php echo $cheque_amount; ?>" name="cheque_amount" id="cheque_amount" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="cheque_date">Cheque Date</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Cheque Date" value="<?php echo $cheque_date; ?>" name="cheque_date" id="cheque_date" class="date-picker form-control" />
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
                <input type="submit" value="SUBMIT" class="btn btn-default btn-l" name="expense_add" title="Submit Record" />
            </div>
        </div>
  	</div>  
    
      <script>


        let amountID=document.getElementById("amount");
        let income_taxID=document.getElementById("income_tax");
                    
        income_taxID.addEventListener("change",function(){
            let persentage= ((amountID.value*income_taxID.value)/100).toString();
            let amount =(amountID.value-persentage);
            document.getElementById("income_tax_deducted").value = persentage;
            document.getElementById("cheque_amount").value = amount;
        });
    </script>
</form>