
<?php
/*header("Access-Control-Allow-Origin:*");
$name = $_POST['name'];
$pwd = $_POST['pwd'];
$array = array("$name","$pwd");
//这里进行一个些操作，比如数据库交互

echo json_encode($array);//json_encode方式是必须的*/
header("Access-Control-Allow-Origin:*");
/*class Student
{
    public $chn_name;
    public $eng_name;

    public function __construct($chn_name, $eng_name)
    {
        $this->chn_name = $chn_name;
        $this->eng_name = $eng_name;
    }

}

$stu_list = [new Student("张三", "ZhangSan"), new Student("李四", "LiSi"), new Student("王五", "WangWu")];
header("Content-type: application/json; charset=utf-8");
echo json_encode($stu_list, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);*/

$temp = null;
include 'base.php';
echo $temp;

