<?php
if(!defined("APP_START")) die("No Direct Access");
$rs = doquery( $sql, $dblink );
?>
<style>
h1, h2, h3, p {
    margin: 0 0 10px;
}

body {
    margin:  0;
    font-family:  Arial;
    font-size:  11px;
}
.head th, .head td{ border:0;}
th, td {
    border: solid 1px #000;
    padding: 5px 5px;
    font-size: 11px;
	vertical-align:top;
}
table table th, table table td{
	padding:3px;
}
table {
    border-collapse:  collapse;
	max-width:1200px;
	margin:0 auto;
}
.text-right{ text-align:right}
.text-left{ text-align:left}
</style>
<table width="100%" cellspacing="0" cellpadding="0">
<tr class="head">
	<th colspan="9">
    	<h2>Releases List</h2>
        <p>
        	<?php
			echo "List of";
            if( !empty( $date_from ) || !empty( $date_to ) ){
                echo "<br />Date";
            }
            if( !empty( $date_from ) ){
                echo " from ".$date_from;
            }
            if( !empty( $date_to ) ){
                echo " to ".$date_to;
            }
			if( !empty( $wing_id ) ){
				echo " Wing: ".get_field($wing_id, "wing","title");
			}
			?>
        </p>
    </th>
</tr>
<tr>
    <th width="5%" align="center">S.no</th>
    <th width="5%" align="center">ID</th>
    <th width="12%">Wing</th>
    <th width="15%">Major Head</th>
    <th width="15%">Sub Head</th>
    <th width="12%">Date of Release</th>
    <th width="8%" class="text-right">Ammount</th>  
    <th width="15%">Details</th>
    <th width="10%">Cheque Number</th>
</tr>
<?php
$total_amount = 0;
if( numrows( $rs ) > 0 ) {
	$sn = 1;
	while( $r = dofetch( $rs ) ) {
        $total_amount += $r["amount"]; 
		?>
		<tr>
        	<td align="center"><?php echo $sn++?></td>
           	<td align="center"><?php echo $r["id"]?></td>
            <td><?php echo get_field($r["wing_id"], "wing","title");?></td>
            <td><?php echo get_field($r["account_id"], "account","title");?></td>
            <td><?php echo get_field($r["reference_id"], "account","title");?></td>
            <td><?php echo datetime_convert($r["datetime_added"]); ?></td>
            <td class="text-right"><?php echo curr_format(unslash($r["amount"])); ?></td>
            <td><?php echo slash($r["details"]); ?></td>
            <td><?php echo unslash($r["cheque_number"]); ?></td>
        </tr>
		<?php
	}
}
?>
<tr>
    <th colspan="6" class="text-right">Total</th>
    <th class="text-right"><?php echo curr_format($total_amount);?></th>
    <th></th>
    <th></th>
</tr>
</table>
<?php
die;