<?php
header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
$DATA_PER_PAGE = 9;

if ($_GET['search_text']!=""){
    $search_text =  $_GET['search_text'];
} else{
    $search_text = false;
}
if ($_GET['artist']!=""){
    $artist = $_GET["artist"];
} else{
    $artist = false;
}

if ($_GET['page']!=""){
    $page =  $_GET['page'];
} else{
    $page = 1;
}

$OrderMethod = $_GET['OrderMethod'];
/*$search_text=false;
$FirstName = false;
$LastName = false;
$page = 1;
$OrderMethod = 1;*/

$start = ($page-1)*$DATA_PER_PAGE;

if ($search_text){
    $p_sql_where = " WHERE Title LIKE'%$search_text%'";
} else if ($artist){
    $sql_artist = "SELECT *,concat_ws(' ',FirstName,LastName) AS whole_name FROM artists HAVING whole_name LIKE '%$artist%';";
    $res_artist = mysqli_query($conn,$sql_artist);
    $p_sql_where = " WHERE ArtistID=0";
    while($row_artist = mysqli_fetch_assoc($res_artist)) {
        $ArtistID1 = $row_artist['ArtistID'];
        $p_sql_where .= " or ArtistID='$ArtistID1'";
    }
} else{
    $p_sql_where = " ";
}

switch ($OrderMethod) {
    case 2: $p_sql_order=" ORDER BY heat DESC";break;
    case 3: $p_sql_order=" ORDER BY Cost DESC";break;
    default: $p_sql_order=" ORDER BY Title";break;
}

$sql = "select * from paintings".$p_sql_where.$p_sql_order." LIMIT $start,$DATA_PER_PAGE;";
$res = mysqli_query($conn,$sql);
$size = mysqli_num_rows($res);
$data = array();
for ($i=0;$i<$size;$i++){
    $row = mysqli_fetch_assoc($res);
    $ArtistID2 = $row['ArtistID'];
    $sql_artist = "select * from artists where ArtistID='$ArtistID2';";
    $res2 = mysqli_query($conn, $sql_artist);
    $row2 = mysqli_fetch_assoc($res2);
    $row['artist'] = $row2['FirstName']." ".$row2['LastName'];
    array_push($data,$row);
}

$sql_count = "select COUNT(*) FROM paintings".$p_sql_where.";";
$res_count = mysqli_query($conn,$sql_count);
$row_count = mysqli_fetch_array($res_count);

$search_result['count'] = ceil($row_count[0]/$DATA_PER_PAGE);
$search_result['data'] = $data;

header("Content-type: application/json; charset=utf-8");
echo json_encode($search_result, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
