<?php

$redis = new Redis();
$redis->connect('172.20.0.20', 16380);
$r = $redis->info();

echo  $r['run_id'] . '<br>' . $r['role'] . '<br><br>';

echo '<pre>', print_r($r), '</pre>';
