<?php
if(!defined("APP_START")) die("No Direct Access");
$sql = "select * from expense where id = '".slash($_GET["id"])."'";
$rs = doquery( $sql, $dblink );
$r=dofetch($rs);
?>
<style>
.clearfix:after{
    clear:both;
    content:"";
    display:block;
}
h1, h2, h3, p {
    margin: 0 0 10px;
}
.logo {
    float: left;
}
.voucher{
	max-width:960px;
	margin:0 auto;
}
body {
    margin:  0;
    font-family:  Arial;
    font-size:  14px;
}
.head th, .head td{ border:0;}
th, td {
    border: solid 1px #000;
    padding: 10px 10px;
    font-size: 14px;
	vertical-align:top;
}
table {
    border-collapse:  collapse;
	max-width:1200px;
	margin:0 auto;
}
.clear:after { 
  content: "";
  clear: both;
  display: table;
}
.voucher_head {
    text-align: right;
    margin: 15px 0;
}
.voucher_head h1{
	font-size: 20px;
	text-transform: uppercase;
	margin: 10px 0;
}
.voucher_head h2{
	font-size: 20px;
    text-transform: uppercase;
    margin-bottom: 0px;
    padding-top: 19px;
	color: #666;
}
.voucher_detail p{
	font-size:14px;
	border-bottom: 1px solid;
	padding-bottom: 5px;
}
.detail_left{
	float:left;
}
.detail_right{
	float:right;
}
.voucher_detail {
    margin: 10px 0;
}
.signature{
	margin-top:80px;
}
.signature p{
	font-size:20px;
}
.signature ul{
	margin:0;
	padding:0;
}
.signature li{
	width: 33.3%;
    float: left;
    list-style: none;
}
.container{
    width: 100%;
    max-width: 986px;
    margin: 0 auto;
}
.signature td{ border: none;
padding: 0;
height: 100px;
vertical-align: bottom;}
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
</style>
<div id="header">
    <div class="container">
        <div class="header-bottom">
            <div class="logo">
                <img src="images/main-logo.png" />
            </div>
            <div class="logo-text">
                <h2>Bank Payment Voucher</h2>
                <h1>PMU-BBSHRRDB-Phase-XII</h1>
                <h3>(Public Sector Fisheries wing)<br> livestock & fisheries department</h3>
            </div>
            <div class="logo">
                <img src="images/second-logo.png" />
            </div>
        </div>
    </div>
</div>
    <table border="1" width="1000px" cellpadding="10" cellspacing="10">
        <tr>                   
          <td>Voucher No#</td>
          <td>Cheque#</td>
          <td>Branch Name:</td>
          <td>NBP wapda colony Br Hyd</td>
          <td>Date:</td>
        </tr>
        <tr>                   
          <td colspan="6">Payee: M/s Haniya Enterprises.</td>
        </tr>
        <tr>                   
          <td colspan="12">Payment of invoice No 0366 Dated: 24-01-2022 amounting to Rs: 90,000/= on account of payment of refreshment Boxes printed
          in four color for disbursing in trainees of BBSHRRDB Phase-X|| Livestock & Fisheries Department (Fisheries Wring) Hyderabad.</td>
        </tr>
        <tr>                   
          <th colspan="2">Account Description</th>
          <th>Account Code</th>
          <th>Debit</th>
          <th>Credit</th>
        </tr>
        <tr>                   
          <td colspan="2">Head of Account: Misc Expenses (Training Cost)</td>
          <td>A03821</td>
          <td>Rs: 90,000/=</td>
          <td></td>
        </tr>
        <tr>                   
          <td colspan="2">Item detail: Payment of refreshment Boxes <br>printed in four color for disbursing in <br>trainees in BBSHRRDB Phase-X|| Livestock<br> &
          Fisheries Department (Fisheries wing) Hyderabad.
          </td>
          <td rowspan="1"></td>
          <td rowspan="1"></td>
          <td rowspan="1"></td>
        </tr>
        <tr>                   
          <td colspan="2">Income Tax Payable (Deduction):</td>
          <td></td>
          <td></td>
          <td>Rs: 4,050/=</td>
        </tr>
        <tr>                   
          <td colspan="2">General sales Tax Payable (Deduction):</td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>                   
          <td colspan="2">Other Sales Tax Payable (Deduction): </td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>                   
          <td colspan="2">Bank:</td>
          <td></td>
          <td></td>
          <td>Rs: 85,950/=</td>
        </tr>
        <tr>                   
          <th colspan="2">Total</th>
          <td></td>
          <th>Rs: 90,000/=</th>
          <th>Rs: 90,000/=</th>
        </tr>
        <tr>                   
          <td colspan="12">In Words: Amount of Cheque Rupees: Eighty Five Thousand Nine Hundred Fifty only.</td>
        </tr>
        <tr>                   
          <th rowspan="6">Prepared by <br> Accounts Officer <br> BBSHRRDB</th>
          <th rowspan="6">Checked by <br> Dy. Project Director <br> BBSHRRDB</th>
          <th rowspan="6">Approved by <br> Project Director <br>BBSHRRDB</th>
        </tr>
    </table>
<?php
die;