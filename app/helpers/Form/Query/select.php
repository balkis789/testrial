<?php 
 use app\tatiye;
 $row=tatiye::BQ($APPQUERY);
 echo 'error_reporting(0);'.PHP_EOL;
 echo 'use app\tatiye;'.PHP_EOL;
 echo 'use app\models\storage;'.PHP_EOL;
 echo '$NEWTOKEN="'.$NEWTOKEN.'";'.PHP_EOL;
 echo 'if($_SERVER["REQUEST_METHOD"] === "POST") {'.PHP_EOL;
 echo '$val=json_decode(file_get_contents("php://input"));'.PHP_EOL;
 echo '$db=new tatiye();'.PHP_EOL;
 echo '$tabel="'.$tabel.'";'.PHP_EOL;
 echo '$keywords="'.$keywords.'";'.PHP_EOL;
 echo '//$chart=tatiye::chart("'.$tabel.'","index");'.PHP_EOL;
 echo '//$chartMonth=tatiye::chartMonth("'.$tabel.'","index",$chart);'.PHP_EOL;
 echo '$COUNT=tatiye::fetch("'.$tabel.'"," COUNT(*) as count");'.PHP_EOL;
 echo '$data=storage::init($tabel)->Cook($val,$keywords,$val->keywords);'.PHP_EOL;
 echo '$search=storage::init($tabel)->keywords($keywords,$val->keywords);'.PHP_EOL;
 echo '$total_paging=storage::init($tabel)->total_paging($COUNT["count"],$val->limit,$keywords,$val->keywords);'.PHP_EOL;
 echo '$QUERY="'.$APPQUERY.' $search ORDER BY id DESC ".$data["record"];'.PHP_EOL;
 echo '$record_num = ($val->limit * $val->page) - $val->limit;'.PHP_EOL;        
 echo '$no=$record_num;'.PHP_EOL;
 echo '$products_arr["limit"]        =$val->limit;'.PHP_EOL;
 echo '$products_arr["page"]         =$val->page;'.PHP_EOL;
 echo '$products_arr["total_data"]   =$COUNT["count"];'.PHP_EOL;
 echo '$products_arr["keywords"]     =$val->page;'.PHP_EOL;
 echo '$products_arr["total_peging"] =$total_paging;'.PHP_EOL;
 echo '$products_arr["storage"]      =array();'.PHP_EOL;
 echo '$result=$db->query($QUERY);'.PHP_EOL;
 echo ' while($row=$result->fetch_assoc()){'.PHP_EOL;
 echo '  $no=$no+1;'.PHP_EOL;
 echo '  $Expuid=tatiye::fetchUserID($row["userid"]);'.PHP_EOL;
 echo '  $number=array("no"=>$no);'.PHP_EOL;
 foreach (array_keys($row) as $key => $value) {
 $Exp1[]=array('no' =>'  $sub_array["'.$value.'"] =$row["'.$value.'"];');
 } 
echo tatiye::AsciiTable()->crud($Exp1);
echo '  array_push($products_arr["storage"], array_merge($number,$sub_array,$Expuid));'.PHP_EOL;
echo '}'.PHP_EOL;
echo '$paging=storage::init($tabel)->getPaging($val->page,$COUNT["count"],$val->limit,$number);'.PHP_EOL;
echo 'http_response_code(200);'.PHP_EOL;
echo 'echo json_encode(array_merge($products_arr,$paging));'.PHP_EOL;
echo '} else {'.PHP_EOL;
echo '  return tatiye::index();'.PHP_EOL;
echo '}'.PHP_EOL;