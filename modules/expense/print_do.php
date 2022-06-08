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
        <h2>Bank Payment Voucher List</h2>
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
    <th width="10%">Date/Time</th>
    <th width="13%">Major Head</th>
    <th width="12%">Sub Head</th>
    <th width="20%">Details</th>
    <th width="8%" class="text-right">Amount</th>
    <th width="10%">Cheque Number</th>
    <th width="15%">Added By</th>
</tr>
<?php
if( numrows( $rs ) > 0 ) {
	$sn = 1;
	$total = 0;
	while( $r = dofetch( $rs ) ) {
	    $total += $r["amount"];
		?>
		<tr>
        	<td align="center"><?php echo $sn++?></td>
            <td><?php echo datetime_convert($r["datetime_added"]); ?></td>
            <td><?php echo get_field( unslash($r["major_head"]), "account", "title" ); ?></td>
            <td><?php echo get_field( unslash($r["sub_head"]), "account", "title" ); ?></td>
            <td><?php echo unslash($r["details"]); ?></td>
            <td class="text-right"><?php echo curr_format(unslash($r["amount"])); ?></td>
            <td><?php echo unslash($r["cheque_number"]); ?></td>
            <td><?php echo get_field( unslash($r["added_by"]), "admin", "username" ); ?></td>
        </tr>
		<?php
	}
	?>
    <tr>
        <td colspan="5">Total</td>
        <th><?php echo curr_format($total)?></th>
        <th></th>
        <th></th>
    </tr>
    <?php
}
?>
</table>
<?php
die;
