<?php
if(!defined("APP_START")) die("No Direct Access");
$extra='';
$is_search=false;
if(isset($_GET["id"])){
	$id=slash($_GET["id"]);
}
else{
	$id= '';
}
if(isset($_GET["date_from"])){
	$date_from=slash($_GET["date_from"]);
	$_SESSION["client"]["report"]["date_from"]=$date_from;
}
if(isset($_SESSION["client"]["report"]["date_from"]))
	$date_from=$_SESSION["client"]["report"]["date_from"];
else
	$date_from=date( "01/m/Y h:i A" );
	$is_search=true;
if(isset($_GET["date_to"])){
	$date_to=slash($_GET["date_to"]);
	$_SESSION["client"]["report"]["date_to"]=$date_to;
}
if(isset($_SESSION["client"]["report"]["date_to"]))
	$date_to=$_SESSION["client"]["report"]["date_to"];
else
	$date_to=date( "d/m/Y h:i A" );
	$is_search=true;
if($id){
	$extra.=" and id='".$id."'";
	$rs=doquery("select * from client where 1 $extra",$dblink);
	if(numrows($rs)>0){
		$client=dofetch($rs);
	}
	else {
		return;
	}
}
?>
<div class="page-header">
	<h1 class="title">
		<?php 
			if(!empty( $id )){ 
				echo $client[ "client_name" ];
			}
			else{
				echo "client's Ledger";
			}
		?>
    </h1>
  	<ol class="breadcrumb">
    	<li class="active">Manage clients</li>
  	</ol>
  	<div class="right">
        <div class="col-sm-12">
            <div class="btn-group" role="group" aria-label="..."> 
                <a href="client_manage.php?tab=list" class="btn btn-light editproject">Back to List</a> 
                <a class="btn print-btn" href="client_manage.php?tab=print&id=<?php echo $id;?>"><i class="fa fa-print" aria-hidden="true"></i></a>
                <a id="topstats" class="btn btn-light" href="#"><i class="fa fa-search"></i></a> 
            </div>
        </div>
  	</div>
</div>
<ul class="topstats clearfix search_filter"<?php if($is_search) echo ' style="display: block"';?>>
	<li class="col-xs-12 col-lg-12 col-sm-12">
        <div>
        	<form method="get" action="client_manage.php?tab=report">
            	<input type="hidden" name="tab" value="report" />
                <span class="col-sm-1 text-to">From</span>
                <div class="col-sm-3">
                    <input type="text" title="Enter Date From" name="date_from" id="date_from" placeholder="" class="form-control date-timepicker"  value="<?php echo $date_from?>" >
                </div>
                <span class="col-sm-1 text-to">To</span>
                <div class="col-sm-3">
                    <input type="text" title="Enter Date To" name="date_to" id="date_to" placeholder="" class="form-control date-timepicker" value="<?php echo $date_to?>" >
                </div>
                <div class="col-sm-4">
                	<select name="id" id="id">
                        <option value="">Select client</option>
                        <?php
                            $res=doquery("select * from client order by client_name ",$dblink);
                            if(numrows($res)>=0){
                                while($rec=dofetch($res)){
                                ?>
                                <option value="<?php echo $rec["id"]?>" <?php echo($id==$rec["id"])?"selected":"";?>><?php echo unslash($rec["client_name"])?></option>
                                <?php
                                }
                            }	
                        ?>
                    </select>
                </div>
                <input type="submit" class="btn btn-default btn-l" value="Search" alt="Search Record" title="Search Record" />
            </form>
        </div>
  	</li>
</ul>
<div class="panel-body table-responsive">
	<table class="table table-hover list">
    	<thead>
            <tr>
                <th width="5%" class="text-center">S.no</th>
                <th>Date</th>
                <th>Transaction</th>                
                <th class="text-right">Amount</th>
                <th class="text-right">Balance</th>
            </tr>
    	</thead>
    	<tbody>
			<?php 
			if( !empty( $id ) ){
				$balance = get_client_balance( $client[ "id" ], datetime_dbconvert( $date_to ) );
				$sn=1;
				?>
				<tr>
                    <td class="text-center"><?php echo $sn++;?></td>
                    <td><?php echo $date_to; ?></td>
                    <td>Closing Balance</td>
                    <td class="text-right">--</td>
                    <td class="text-right"><?php echo curr_format($balance); ?></td>
                </tr>
				<?php
				$sql="select concat( 'Sale #', id) as transaction, date, net_price as amount from sales where client_id = '".$client[ "id" ]."' and date >='".datetime_dbconvert( $date_from )."' and date <='".datetime_dbconvert( $date_to )."' union select concat( 'Sale Return #', id) as transaction, date, -net_price as amount from sales_return where client_id = '".$client["id"]."' and date >='".datetime_dbconvert( $date_from )."' and date <='".datetime_dbconvert( $date_to )."' union select 'Payment', datetime as date, -amount from client_payment where client_id = '".$client[ "id" ]."' and datetime >='".datetime_dbconvert( $date_from )."' and datetime <='".datetime_dbconvert( $date_to )."' order by date desc";
				$rs=doquery($sql,$dblink);
				if(numrows($rs)>0){
					while($r=dofetch($rs)){
						?>
						<tr>
							<td class="text-center"><?php echo $sn;?></td>
							<td><?php echo datetime_convert($r["date"]); ?></td>
							<td><?php echo unslash($r["transaction"]); ?></td>
							<td class="text-right"><?php echo curr_format($r["amount"]); ?></td>
							<td class="text-right"><?php echo curr_format($balance); ?></td>
						</tr>
						<?php 
						$sn++;
						$balance = $balance - $r["amount"];
					}
					?>
					<tr>
                        <td class="text-center"><?php echo $sn++;?></td>
                        <td><?php echo $date_from; ?></td>
                        <td>Opening Balance</td>
                        <td class="text-right">--</td>
                        <td class="text-right"><?php echo curr_format($balance); ?></td>
                    </tr>
					<?php
				}
				else{	
					?>
					<tr>
						<td colspan="5"  class="no-record">No Result Found</td>
					</tr>
					<?php
				}
			}
			else {
				?>
				<tr>
					<td colspan="5"  class="no-record">Select Client from above dropdown</td>
				</tr>
				<?php
			}
            ?>
    	</tbody>
  	</table>
</div>
