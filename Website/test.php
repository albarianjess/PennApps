<?php
$name = $_GET['name'];
echo "[";
echo exec("java -jar MongoDB.jar $name");
echo "]";
?>
