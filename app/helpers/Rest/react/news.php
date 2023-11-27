<?php 
use wolf05\helper\tatiyeNet;
use wolf05\helper\Rest\React\storage;
 
$db=new tatiyeNet();
$Text=tatiyeNet::Text();
$data = json_decode(file_get_contents("php://input"));
$tabel='app_news';
$select=$data->select;
if (!empty($data->where)) {
  $where="WHERE ".$data->where;
} else {
  $where="";
}
if (!empty($data->limit)) {
  $limit=$data->limit;
} else {
  $limit=10;
}
if ($data->page==1) {
   $page=0;
} else {
  $page=$data->page;
}
if (!empty($data->keywords)) {
	$keywords="WHERE ".storage::init($tabel,$where,$select)->keywords($data->keywords);
	$Key=1;
} else {
	$keywords=$where;
	$Key=0;
}

        $setpage =$data->page;
        $records =$data->limit;
        $record_num = ($records * $setpage) - $records;

$arry=array();

$total_data                   =storage::init($tabel,$where)->total_data($keywords);
$total_peging                 =storage::init($tabel,$where)->total_paging($total_data, $limit,$keywords,$Key);
$products_arr["limit"]        =$limit;
$products_arr["page"]         =$page;
$products_arr["total_data"]   =$total_data;
$products_arr["total_peging"] =$total_peging;
$products_arr["storage"]         =array();


 if (!empty($Key)) {
    $record=0;
    $query="SELECT $select,id,user_id FROM $tabel $keywords      ORDER BY id DESC LIMIT 0, $records ";
 } else {
    $record=$record_num;
    $query="SELECT $select,id,user_id FROM $tabel $where     ORDER BY id DESC LIMIT $record_num, $records ";
 }
$result=$db->query($query);
while($row=$result->fetch_assoc()){
	  $record=$record+1;
	  $number=array('no'=>$record);
    array_push($products_arr["storage"], array_merge($number,$row));
}

 @$paging=storage::init($tabel,$keywords,$select)->getPaging($page, $total_data, $limit,$number);
 http_response_code(200);
 echo json_encode(array_merge($products_arr,$paging));
