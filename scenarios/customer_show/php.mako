%if mode == 'definition':
Balanced\Customer::get()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-1xLFE6RLC1W3P4ePiQDI4UVpRwtKcdfqL";

Balanced\Customer::get("/customers/CU4wBFaFMi043nnBgRNrgTXa");

?>
%endif