<?php
if(!defined("APP_START")) die("No Direct Access");
?>
<div class="page-header">
	<h1 class="title">Balance Sheet</h1>
  	<ol class="breadcrumb">
    	<li class="active">Balance Sheet</li>
  	</ol>
  	
</div>
<div class="panel-body table-responsive">
	<table class="table table-hover list">
    	<thead>
            <tr>
                <th width="50%">Assets</th>
                <th>Liabilities</th>
            </tr>
    	</thead>
    	<tbody>
        	<tr>
				<td>
					<table  class="table table-hover list">
						<thead>
                            <tr>
                                <th colspan="2">Current Assets</th>
                            </tr>
                        </thead>
						<?php 
						$total = 0;
                        $total_salary = 0;
						$account_payable = array();
                        $capitals = array();
                        $fixed_assets = array();
                        $salary_balance = 0;
                        $opening_balance = dofetch(doquery("select sum(balance) as total from account", $dblink));
                        $opening_balance = $opening_balance["total"];
                        if($opening_balance<0){
                            $total += -$opening_balance;
                            ?>
                            <tr>
                                <td>Account Opening Balance</td>
                                <td class="text-right"><?php echo curr_format( $opening_balance ) ?></td>
                            </tr>
                            <?php
                        }
						$sql="select * from account order by title";
						
						$rs=doquery($sql, $dblink);
						if( numrows($rs) > 0){
							$sn=1;
							while($r=dofetch($rs)){             
								$balance = get_account_balance( $r[ "id" ] );
								if($balance!=0){
									if( $balance >= 0 ) {
										if($r["type"]==0){
                                            $total += $balance;
                                            ?>
                                            <tr>
                                                <td><?php echo unslash($r["title"] ); ?></td>
                                                <td class="text-right"><?php echo curr_format( $balance ) ?></td>
                                            </tr>
                                            <?php
                                        }
										else{
                                            $fixed_assets[] = array(
                                                "name" => unslash($r["title"] ),
                                                "balance" => $balance
                                            );
                                        }
										$sn++;
									}
									else {
                                        if($r["type"]==2){
                                            $capitals[] = array(
                                                "name" => unslash($r["title"] ),
                                                "balance" => $balance
                                            );
                                        }
										else{
										    $account_payable[] = array(
                                                "name" => unslash($r["title"] ),
                                                "balance" => $balance
                                            );
                                        }
									}
								}
							}
						}
						
						if( count($fixed_assets) > 0){
                            ?>
                            <thead>
                            <tr>
                                <th colspan="2">Fixed Assets</th>
                            </tr>
                            </thead>
                            <?php
                            $sn=1;
                            foreach( $fixed_assets as $account ){
                                $total += $account[ "balance" ];
                                ?>
                                <tr>
                                    <td><?php echo $account["name"]; ?></td>
                                    <td class="text-right"><?php echo curr_format( $account[ "balance" ] ) ?></td>
                                </tr>
                                <?php
                                $sn++;
                            }
                        }
                        $expense_total = 0;
                        $rs = doquery( "select title, sum(amount) as total from expense a left join expense_category b on a.expense_category_id = b.id where a.status=1 group by expense_category_id order by title", $dblink );
                        if( numrows( $rs ) > 0 ) {
                            $sn=1;
                            /*?>
                            <thead>
                            <tr>
                                <th colspan="2">Expenses</th>
                            </tr>
                            </thead>
                            <?php */
                            while($r=dofetch($rs)){
                                $expense_total += $r["total"];
                                /*?>
                                <tr>
                                    <td><?php echo unslash($r["title"]); ?></td>
                                    <td class="text-right"><?php echo curr_format( $r["total"] ) ?></td>
                                </tr>
                                <?php*/
                                $sn++;
                            }
                        }
                        $expense_total += $total_salary;
                        /*?>
                        <tr>
                            <td>Salary</td>
                            <td class="text-right"><?php echo curr_format( $total_salary )?></td>
                        </tr><?php */?>
                        <tr>
                            <th>Total</th>
                            <th class="text-right"><?php echo curr_format( $total )?></th>
                        </tr>
                  	</table>
              	</td>
                
           	</tr>
    	</tbody>
  	</table>
</div>
