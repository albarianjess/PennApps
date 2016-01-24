<?php
require 'vendor/autoload.php';
$manager = new MongoDB\Driver\Manager("mongodb://localhost:27017");
    $collection = new MongoDB\Collection($manager, "test.restaurants");

    $result = $collection->find();

    foreach ($result as $entry)
    {
        echo $entry->_id, ': ', $entry->name, "\n";
    }
?>
