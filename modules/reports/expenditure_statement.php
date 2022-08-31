<?php
if(!defined("APP_START")) die("No Direct Access");
?>
<div class="page-header">
	<h1 class="title">Reports</h1>
  	<ol class="breadcrumb">
    	<li class="active">Expenditure Statement</li>
  	</ol>
  	<div class="right">
    	<div class="btn-group" role="group" aria-label="..."> 
        	<a id="topstats" class="btn btn-light" href="#"><i class="fa fa-search"></i></a> 
            <a class="btn print-btn" href="report_manage.php?tab=expenditure_statement_print"><i class="fa fa-print" aria-hidden="true"></i></a>
            <!-- <a class="btn print-btn" href="report_manage.php?tab=csv_general">CSV</a> -->
        </div>
  	</div>
</div>
<ul class="topstats clearfix search_filter"<?php if($is_search) echo ' style="display: block"';?>>
	<li class="col-xs-12 col-lg-12 col-sm-12">
        <div>
        	<form class="form-horizontal" action="" method="get">
            	<input type="hidden" name="tab" value="expenditure_statement" />
                <div class="col-sm-2">
                    <select name="wing_id">
                    	<?php
                        $rs=doquery( "select * from wing where status=1 order by title", $dblink );
						if( numrows( $rs ) > 0 ) {
							while( $r = dofetch( $rs ) ) {
								?>
								<option value="<?php echo $r[ "id" ]?>"<?php echo $r[ "id" ]==$wing_id?' selected':''?>><?php echo unslash( $r[ "title" ] )?></option>
								<?php
							}
						}
						?>
                    </select>
                </div>
                <div class="col-sm-2">
                    <input type="text" title="Enter Date From" name="date_from" id="date_from" placeholder="Date From" class="form-control date-picker"  value="<?php echo $date_from?>" >
                </div>
                <div class="col-sm-2">
                    <input type="text" title="Enter Date To" name="date_to" id="date_to" placeholder="Date To" class="form-control date-picker"  value="<?php echo $date_to?>" >
                </div>                
                <div class="col-sm-3 text-left">
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
                <th width="5%" class="text-center">S.no</th>
                <th>Code </th>
                <th>Head of Account</th>
                <th>Sub Head</th>
                <th class="text-right">Allocation</th>
                <th class="text-right">Releases</th>
                <th class="text-right">Expenditure</th>
                <th class="text-right">Balance</th>
            </tr>
    	</thead>
    	<tbody>
			<?php 
            $rs=doquery( $sql, $dblink );
            if(numrows($rs)>0){
                
                while($r = dofetch($rs)){
                    // print_r($r);
                $sub_heads = doquery("select a.*, b.amount as releases, c.amount as expenditure from account a left join transaction b on a.id = b.reference_id left join expense c on a.id = c.sub_head where a.status = 1 and parent_id = '".$r["id"]."' group by title", $dblink);
				?>
				<tr>
                	<td></td>
                    <td colspan="3"><?php echo unslash($r["title"])?></td>
                    <td class="text-right"><?php echo curr_format($r["balance"])?></td>
                    <td class="text-right"><?php echo curr_format($r["releases"])?></td>
                    <td class="text-right"><?php echo curr_format($r["expenditure"])?></td>
                    <td class="text-right"><?php echo curr_format($r["releases"]-$r["expenditure"])?></td>
                </tr>
                <?php 
                if(numrows($sub_heads)>0){
                    $sn=1;
                    while($sub_head = dofetch($sub_heads)){
                    ?>
                    <tr>
                        <td class="text-center"><?php echo $sn++?></td>
                        <td><?php echo unslash($sub_head["code"]);?></td>
                        <td><?php echo get_field($sub_head["parent_id"], "account", "title");?></td>
                        <td ><?php echo unslash($sub_head["title"]);?></td>
                        <td class="text-right"><?php echo curr_format($sub_head["balance"])?></td>
                        <td class="text-right"><?php echo curr_format($sub_head["releases"])?></td>
                        <td class="text-right"><?php echo curr_format($sub_head["expenditure"])?></td>
                        <td class="text-right"><?php echo curr_format($sub_head["releases"]-$sub_head["expenditure"])?></td>
                    </tr>
                    <?php
                    }
                }
                ?>
                <?php	
                }
            }
            else{	
                ?>
                <tr>
                    <td colspan="6"  class="no-record">No Result Found</td>
                </tr>
                <?php
            }
            ?>
    	</tbody>
  	</table>
</div>
