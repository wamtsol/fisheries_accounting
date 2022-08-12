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
	<th colspan="11">
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
    <th width="3%" align="center">S.no</th>
    <th width="12%">Date</th>
    <th width="10%">Payee</th>
    <th width="10%">NTN No</th>
    <th width="13%">Major Head</th>
    <th width="12%">Sub Head</th>
    <th width="20%">Details</th>
    <th width="10%" class="text-right">Bill Amount</th>
    <th width="8%" class="text-right">I.Tax</th>
    <th width="8%" class="text-right">Ch.No</th>
    <th width="10%">Ch.Date</th>
</tr>
<?php
if( numrows( $rs ) > 0 ) {
	$sn = 1;
	$total = $income_tax_total = 0;
	while( $r = dofetch( $rs ) ) {
	    $total += $r["amount"];
        $income_tax_total += $r["income_tax_deducted"];
		?>
		<tr>
        	<td align="center"><?php echo $sn++?></td>
            <td><?php echo datetime_convert($r["datetime_added"]); ?></td>
            <td><?php echo unslash($r["payee"]); ?></td>
            <td><?php echo unslash($r["code"]); ?></td>
            <td><?php echo get_field($r["major_head"], "account", "title" ); ?></td>
            <td><?php echo get_field($r["sub_head"], "account", "title" ); ?></td>
            <td><?php echo unslash($r["details"]); ?></td>
            <td class="text-right"><?php echo curr_format($r["amount"]); ?></td>
            <td class="text-right"><?php echo curr_format($r["income_tax_deducted"]); ?></td>
            <td class="text-right"><?php echo unslash($r["cheque_number"]); ?></td>
            <td><?php echo date_convert($r["cheque_date"]); ?></td>
        </tr>
		<?php
	}
	?>
    <tr>
        <td colspan="7" class="text-right">Total</td>
        <th class="text-right"><?php echo curr_format($total)?></th>
        <th class="text-right"><?php echo curr_format($income_tax_total)?></th>
        <th></th>
        <th></th>
    </tr>
    <?php
}
?>
</table>
<?php
die;
