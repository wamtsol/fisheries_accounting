<?php
if(!defined("APP_START")) die("No Direct Access");
$rs = doquery( $sql, $dblink );
if(numrows($rs)>0){
    header('Content-Type: text/csv; charset=utf-8');
    header("Content-Disposition: attachment; filename=expense.csv");
    $fh = fopen( 'php://output', 'w' );
    if( !empty( $wing_id ) ){
        $wing = get_field($wing_id, "wing", "title");
        fputcsv($fh,array('Wing:', $wing_id));
    }
    fputcsv($fh,array('S.no','Date/Time','Major Head','Sub Head','Details','Amount','Cheque Number','Added By'));
    $sn=1;
    $total = 0;
    while($r=dofetch($rs)){
        $total += $r["amount"];
        fputcsv($fh,array(
            $sn++,
            datetime_convert($r["datetime_added"]),
            get_field( unslash($r["major_head"]), "account", "title" ),
            get_field( unslash($r["sub_head"]), "account", "title" ),
            unslash($r["details"]),
            curr_format($r["amount"]),
            unslash($r["cheque_number"]),
            get_field( unslash($r["added_by"]), "admin", "username" )
        ));
    }
    fputcsv($fh,array('','','Total:',curr_format($total)));
    fclose($fh);
}
die;
?>
