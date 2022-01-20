<?php
if(!defined("APP_START")) die("No Direct Access");
?>
<div class="page-header">
	<h1 class="title">Edit Client</h1>
  	<ol class="breadcrumb">
    	<li class="active">Manage Client</li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> <a href="client_manage.php" class="btn btn-light editproject">Back to List</a> </div>
  	</div>
</div>
<form action="client_manage.php?tab=edit" method="post" enctype="multipart/form-data" name="frmAdd"  class="form-horizontal form-horizontal-left">
	<input type="hidden" name="id" value="<?php echo $id;?>">
  	<div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="client_name">Client Name <span class="manadatory">*</span></label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Name" value="<?php echo $client_name; ?>" name="client_name" id="client_name" class="form-control" >
            </div>
        </div>
  	</div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="representative_name">Representative Name</label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Name" value="<?php echo $representative_name; ?>" name="representative_name" id="representative_name" class="form-control" >
            </div>
        </div>
  	</div>
  	<div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="phone">Phone</label>
            </div>
            <div class="col-sm-10">
                <input type="text" value="<?php echo $phone; ?>" name="phone" id="phone" class="form-control" title="Enter Phone">
            </div>
        </div>
  	</div>
  	<div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="address">Address</label>
            </div>
            <div class="col-sm-10">
                <textarea name="address" id="address" class="form-control mceEditor"><?php echo $address; ?></textarea>
            </div>
        </div>
  	</div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label class="form-label" for="balance">Balance</label>
            </div>
            <div class="col-sm-10">
                <input type="text" value="<?php echo $balance; ?>" name="balance" id="balance" class="form-control" title="Enter Balance">
            </div>
        </div>
  	</div>
  	<div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label for="company" class="form-label"></label>
            </div>
            <div class="col-sm-10">
                <input type="submit" value="UPDATE" class="btn btn-default btn-l" name="client_edit" title="Update Record" />
            </div>
        </div>
  	</div>
</form>