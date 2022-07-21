<?php
if(!defined("APP_START")) die("No Direct Access");
include("expenditure_statement_do.php");
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
.logo {
    float: left;
}
.container{
    width: 100%;
    max-width: 986px;
    margin: 0 auto;
}
.logo img{ }
.header-bottom {
    padding-top: 10px;
    padding-bottom: 10px;
    margin-bottom: 8px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.logo-text {
    text-align: center;
}
.logo-text h2 {
    margin: 0;
    font-size: 26px;
    font-weight: 300;
}
.logo-text h1 {
    margin: 0;
    font-size: 22px;
    text-transform: uppercase;
    font-weight: bold;
}
.logo-text h3 {
    margin: 0;
    font-size: 22px;
    text-transform: capitalize;
    line-height: 24px;
}
.logo-text {
    text-align: center;
}
.logo-text h2 {
    margin: 0;
    font-size: 26px;
    font-weight: 300;
}
.text-right{
  text-align:right;
}
.text-center{ text-align:center}
.text-left{text-align:left}
</style>
<div id="header">
    <div class="container">
        <div class="header-bottom">
            <div class="logo">
                <img src="images/main-logo.png" />
            </div>
            <div class="logo-text">
                <h1>Benazir Bhutto Shaheed</h1>
                <h3>Human Resource Research & Development Board<br> livestock & fisheries department</h3>
                <h2>Expenditure Statement</h2>
            </div>
            <div class="logo">
                <img src="images/second-logo.png" />
            </div>
        </div>
    </div>
</div>
<table width="100%" cellspacing="0" cellpadding="0">
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
    <?php 
    $total_allocation_p = $total_releases_p = $total_expenditure_p = $total_balance_p = 0;
    $total_allocation = $total_releases = $total_expenditure = $total_balance = 0;
    $rs=doquery( $sql, $dblink );
    if(numrows($rs)>0){
        while($r = dofetch($rs)){
            $total_allocation_p = $r["balance"];
            // echo $total_allocation_p;die;
            $sub_heads = doquery("select a.*, b.amount as releases, c.amount as expenditure from account a left join transaction b on a.id = b.reference_id left join expense c on a.id = c.sub_head where a.status = 1 and parent_id = '".$r["id"]."'", $dblink);
            ?>
            <tr>
                <td></td>
                <th colspan="3" class="text-left"><?php echo unslash($r["title"])?></th>
                <th class="text-right"><?php echo curr_format($r["balance"])?></th>
                <th class="text-right"><?php echo curr_format($r["releases"])?></th>
                <th class="text-right"><?php echo curr_format($r["expenditure"])?></th>
                <th class="text-right"><?php echo curr_format($r["releases"]-$r["expenditure"])?></th>
            </tr>
            <?php 
            if(numrows($sub_heads)>0){
                $sn=1;
                while($sub_head = dofetch($sub_heads)){
                    $total_allocation += $sub_head["balance"];
                    $total_releases += $sub_head["releases"];
                    $total_expenditure += $sub_head["expenditure"];
                    $total_balance += $sub_head["releases"]-$sub_head["expenditure"];
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
        }
        ?>
        <tr>
            <th class="text-right" colspan="4">Total</th>
            <th class="text-right"><?php echo curr_format($total_allocation);?></th>
            <th class="text-right"><?php echo curr_format($total_releases);?></th>
            <th class="text-right"><?php echo curr_format($total_expenditure);?></th>
            <th class="text-right"><?php echo curr_format($total_balance);?></th>
        </tr>
        <?php
    }
    else{	
        ?>
        <tr>
            <td colspan="6"  class="no-record">No Result Found</td>
        </tr>
        <?php
    }
    ?>
</table>
<?php
die;
