%if mode == 'definition':
Balanced\Order->debitFrom()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2eKlj1ZDfAcZSARMf3NMhBHywDej0avSY";

$order = Balanced\Order::get("/orders/OR3vURGwVtqDnnkRS9fgH41G");
$card = Balanced\Card::get("/cards/CC4zyuNpxY0A0eAf87SeULCR");
$order->debitFrom(
    $card,
    "5000"
);



?>
%endif