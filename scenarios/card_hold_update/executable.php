<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-1xLFE6RLC1W3P4ePiQDI4UVpRwtKcdfqL";

$hold = Balanced\Hold::get("/card_holds/HL3QlUen3sZjc3dPbgK40F7G");
$hold->description = 'update this description';
$hold->meta = array(
    "holding.for" => "user1",
    "meaningful.key" => "some.value",
);
$hold->save();

?>