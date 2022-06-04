<?php
if(!defined("APP_START")) die("No Direct Access");
$rs = doquery( $sql, $dblink );
if(numrows($rs)>0){
    header('Content-Type: text/csv; charset=utf-8');
    header("Content-Disposition: attachment; filename=releases.csv");
    $fh = fopen( 'php://output', 'w' );
    if( !empty( $date_from ) ){
        fputcsv($fh,array('From:', $date_from, '', 'To:', $date_to));
    }
    if( !empty( $wing_id ) ){
        $wing = get_field($wing_id, "wing", "title");
        fputcsv($fh,array('Wing:', $wing));
    }
    fputcsv($fh,array('S.no','ID', 'Wing', 'Major Head', 'Sub Head', 'Date of release', 'Amount', 'Details', 'Cheque Number'));
    $sn=1;
    $total = 0;
    while($r=dofetch($rs)){
        $total += $r["amount"];
        fputcsv($fh,array(
            $sn++,
            $r["id"],
            get_field($r["wing_id"], "wing","title"),
            get_field($r["account_id"], "account","title"),
            get_field($r["reference_id"], "account","title"),
            datetime_convert($r["datetime_added"]),
            curr_format($r["amount"]),
            slash($r["details"]),
            unslash($r["cheque_number"]),
        ));
    }
    fputcsv($fh,array('','','','','','Total:',curr_format($total)));
    fclose($fh);
}
die;
?>
