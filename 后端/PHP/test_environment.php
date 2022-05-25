<?php
$bar = "hello world";
echo "$bar";

$bar = 3.1415926;
echo "$bar";


echo "echo<br>";
print "print<br>";

echo "first ","second ","third<br>";

if(print("true"))
    echo "it worked!";
else
    echo "it doesn't work!";
$temp = "counter";

function updateCounter()

{

    static $counter = 0;

    $counter++;

    echo "Static {$temp} is now {$counter} <br>";

}

$counter = 10;

updateCounter();
