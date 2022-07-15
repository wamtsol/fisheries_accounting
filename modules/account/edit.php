<?php
if(!defined("APP_START")) die("No Direct Access");
?>
<div class="page-header">
	<h1 class="title">Edit Account</h1>
  	<ol class="breadcrumb">
    	<li class="active">Manage Account</li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> <a href="account_manage.php" class="btn btn-light editproject">Back to List</a> </div>
  	</div>
</div>        	
<form class="form-horizontal form-horizontal-left" role="form" action="account_manage.php?tab=edit" method="post" enctype="multipart/form-data" name="frmAdd">
    <input type="hidden" name="id" value="<?php echo $id;?>">
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
                <label class="form-label" for="parent_id">Major Head</label>
            </div>
            <div class="col-sm-10">
                <select name="parent_id" title="Choose Option">
                    <option value="0">Select Major Head</option>
                    <?php
                    $res=doquery("select * from account where status=1 and parent_id = 0 order by title", $dblink);
                    if(numrows($res)>0){
                        while($rec=dofetch($res)){
                        ?>
                        <option value="<?php echo $rec["id"]?>"<?php echo($parent_id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"]); ?></option>
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
                <input type="text" title="Enter The Code" value="<?php echo $code; ?>"  name="code" id="code" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="title">Sub Head </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Sub Head" value="<?php echo $title; ?>" name="title" id="title" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
        	<div class="col-sm-2 control-label">
            	<label class="form-label" for="balance">Budget Approved </label>
            </div>
            <div class="col-sm-10">
                <input type="text" title="Enter Balance" value="<?php echo $balance; ?>" name="balance" id="balance" class="form-control" />
            </div>
        </div>
    </div>
    <div class="form-group">
    	<div class="row">
            <div class="col-sm-2 control-label">
                <label for="company" class="form-label"></label>
            </div>
            <div class="col-sm-10">
                <input type="submit" value="Update" class="btn btn-default btn-l" name="account_edit" title="Update Record" />
            </div>
        </div>
  	</div>
</form>