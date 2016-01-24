<?php
// Config
$dbhost = 'localhost';
$dbname = 'shelters';
 
// Connect to test database
$m = new Mongo("mongodb://$dbhost");
$db = $m->$dbname;
 
// select the collection
$collection = $db->shows;
 
// pull a cursor query
$cursor = $collection->find();
 
?>
