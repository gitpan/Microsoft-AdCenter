package Microsoft::AdCenter::CustomerBillingService::Test::Invoice;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerBillingService;
use Microsoft::AdCenter::CustomerBillingService::Invoice;

sub test_can_create_invoice_and_set_all_fields : Test(4) {
    my $invoice = Microsoft::AdCenter::CustomerBillingService::Invoice->new
        ->Data('data')
        ->Id('id')
        ->Type('type')
    ;

    ok($invoice);

    is($invoice->Data, 'data', 'can get data');
    is($invoice->Id, 'id', 'can get id');
    is($invoice->Type, 'type', 'can get type');
};

1;
