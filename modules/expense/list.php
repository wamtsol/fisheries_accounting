<?php
if(!defined("APP_START")) die("No Direct Access");
?>
<div class="page-header">
	<h1 class="title">Manage Bank Payment Voucher</h1>
  	<ol class="breadcrumb">
    	<li class="active">
            All Voucher
        </li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> 
        	<a href="expense_manage.php?tab=add" class="btn btn-light editproject">Add New Voucher</a> 
            <a id="topstats" class="btn btn-light" href="#"><i class="fa fa-search"></i></a> 
            <a class="btn print-btn" href="expense_manage.php?tab=print"><i class="fa fa-print" aria-hidden="true"></i></a>
            <a class="btn print-btn" href="expense_manage.php?tab=csv_report">CSV</a>
    	</div> 
    </div> 
</div>
<ul class="topstats clearfix search_filter"<?php if($is_search) echo ' style="display: block"';?>>
    <li class="col-xs-12 col-lg-12 col-sm-12">
    	<div>
        	<form class="form-horizontal" action="" method="get">
                <div class="col-sm-2 margin-btm-5">
                	<select name="wing_id" id="wing_id" class="custom_select">
                        <option value=""<?php echo ($wing_id=="")? " selected":"";?>>Select Wing</option>
                        <?php
                            $res=doquery("select * from wing where status = 1 order by title",$dblink);
                            if(numrows($res)>=0){
                                while($rec=dofetch($res)){
                                ?>
                                <option value="<?php echo $rec["id"]?>" <?php echo($wing_id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"])?></option>
                            	<?php
                                }
                            }	
                        ?>
                    </select>
                </div>
                <div class="col-sm-2 margin-btm-5">
                	<select name="major_head" id="major_head" class="custom_select">
                        <option value=""<?php echo ($major_head=="")? " selected":"";?>>Major Head</option>
                        <?php
                            $res=doquery("select * from account where status = 1 and parent_id = 0 order by title",$dblink);
                            if(numrows($res)>=0){
                                while($rec=dofetch($res)){
                                ?>
                                <option value="<?php echo $rec["id"]?>" <?php echo($major_head==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"])?></option>
                            	<?php
                                }
                            }	
                        ?>
                    </select>
                </div>
                <div class="col-sm-2 margin-btm-5">
                	<select name="sub_head" id="sub_head" class="select_multiple" title="Choose Option">
                        <option value=""<?php echo ($sub_head=="")? " selected":"";?>>Sub Head</option>
                        <?php
                            $res=doquery("select * from account where status = 1 and parent_id !=0 order by title",$dblink);
                            if(numrows($res)>=0){
                                while($rec=dofetch($res)){
                                ?>
                                <option value="<?php echo $rec["id"]?>" <?php echo($sub_head==$rec["id"])?"selected":"";?>><?php echo unslash($rec["title"])." (".get_field($rec["wing_id"], "wing", "title").")"; ?></option>
                            	<?php
                                }
                            }	
                        ?>
                    </select>
                </div>
                <div class="col-sm-2 margin-btm-5">
                  <input type="text" title="Enter Date From" value="<?php echo $date_from;?>" placeholder="Date From" name="date_from" id="date_from" class="form-control date-picker" autocomplete="off">  
                </div>
                <div class="col-sm-2 margin-btm-5">
                  <input type="text" title="Enter Date To" value="<?php echo $date_to;?>" placeholder="Date To" name="date_to" id="date_to" class="form-control date-picker" autocomplete="off">  
                </div>
                <div class="col-sm-2 col-xs-2 text-left">
                    <input type="button" class="btn btn-danger btn-l reset_search" value="Reset" alt="Reset Record" title="Reset Record" />
                    <input type="submit" class="btn btn-default btn-l" value="Search" alt="Search Record" title="Search Record" />
                </div>
            </form>
        </div>
  	</li>
</ul>
<div class="panel-body table-responsive">
	<table class="table table-hover list">
    	<thead>
            <tr>
                <th width="3%" class="text-center">S.No</th>
                <th class="text-center" width="2%"><div class="checkbox checkbox-primary">
                    <input type="checkbox" id="select_all" value="0" title="Select All Records">
                    <label for="select_all"></label></div></th>
                <th width="10%">Date/Time</th>
                <th width="8%">Voucher #</th>
                <th width="13%">Major Head</th>
                <th width="12%">Sub Head</th>
                <th width="20%">Details</th>
                <th width="8%" class="text-right">Amount</th>
                <th width="10%" class="text-right">Cheque Number</th>
                <th width="10%">Added By</th>
                <th width="5%" class="text-center">Status</th>
                <th width="12%" class="text-center">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $total_amount = 0;
            $rs=show_page($rows, $pageNum, $sql);
            if(numrows($rs)>0){
                $sn=1;
                while($r=dofetch($rs)){      
                    $total_amount += $r["amount"];       
                    ?>
                    <tr>
                        <td class="text-center"><?php echo $sn;?></td>
                        <td class="text-center"><div class="checkbox margin-t-0 checkbox-primary">
                            <input type="checkbox" name="id[]" id="<?php echo "rec_".$sn?>"  value="<?php echo $r["id"]?>" title="Select Record" />
                            <label for="<?php echo "rec_".$sn?>"></label></div>
                        </td>
                        <td><?php echo datetime_convert($r["datetime_added"]); ?></td>
                        <td><?php echo unslash($r["voucher_no"]); ?></td>
                        <td><?php echo get_field( unslash($r["major_head"]), "account", "title" ); ?></td>
                        <td><?php echo get_field( unslash($r["sub_head"]), "account", "title" ); ?></td>
                        <td><?php echo unslash($r["details"]); ?></td>
                        <td class="text-right"><?php echo curr_format(unslash($r["amount"])); ?></td>
                        <td class="text-right"><?php echo unslash($r["cheque_number"]); ?></td>
                        <td><?php echo get_field( unslash($r["added_by"]), "admin", "username" ); ?></td>
                        <td class="text-center">
                            <a href="expense_manage.php?id=<?php echo $r['id'];?>&tab=status&s=<?php echo ($r["status"]==0)?1:0;?>">
                                <?php
                                if($r["status"]==0){
                                    ?>
                                    <img src="images/offstatus.png" alt="Off" title="Set Status On">
                                    <?php
                                }
                                else{
                                    ?>
                                    <img src="images/onstatus.png" alt="On" title="Set Status Off">
                                    <?php
                                }
                                ?>
                            </a>
                        </td>
                        <td class="text-center">
                            	<a href="expense_manage.php?tab=edit&id=<?php echo $r['id'];?>"><img title="Edit Record" alt="Edit" src="images/edit.png"></a>&nbsp;&nbsp;
                                <a href="expense_manage.php?tab=voucher&id=<?php echo $r['id'];?>"><img title="Edit Record" alt="Edit" src="images/view.png"></a>&nbsp;&nbsp;
                            	<a onclick="return confirm('Are you sure you want to delete')" href="expense_manage.php?id=<?php echo $r['id'];?>&amp;tab=delete"><img title="Delete Record" alt="Delete" src="images/delete.png"></a>
                        </td>
                    </tr>  
                    <?php 
                    $sn++;
                }
                ?>
                <tr>
                    <th colspan="7" class="text-right">Total:</th>
                    <th class="text-right"><?php echo curr_format($total_amount);?></th>
                    <th colspan="4"></th>
                </tr>
                <tr>
                    <td colspan="7" class="actions">
                        <select name="bulk_action" class="" id="bulk_action" title="Choose Action">
                            <option value="null">Bulk Action</option>
                            <option value="delete">Delete</option>
                            <option value="statuson">Set Status On</option>
                            <option value="statusof">Set Status Off</option>
                        </select>
                        <input type="button" name="apply" value="Apply" id="apply_bulk_action" class="btn btn-light" title="Apply Action"  />
                    </td>
                    <td colspan="6" class="paging" title="Paging" align="right"><?php echo pages_list($rows, "expense", $sql, $pageNum)?></td>
                </tr>
                <?php	
            }
            else{	
                ?>
                <tr>
                    <td colspan="13"  class="no-record">No Result Found</td>
                </tr>
                <?php
            }
            ?>
        </tbody>
     </table>
</div>