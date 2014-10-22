package Microsoft::AdCenter::CustomerBillingService::Test::GetInvoicesInfoResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerBillingService;
use Microsoft::AdCenter::CustomerBillingService::GetInvoicesInfoResponse;

sub test_can_create_get_invoices_info_response_and_set_all_fields : Test(2) {
    my $get_invoices_info_response = Microsoft::AdCenter::CustomerBillingService::GetInvoicesInfoResponse->new
        ->InvoicesInfo('invoices info')
    ;

    ok($get_invoices_info_response);

    is($get_invoices_info_response->InvoicesInfo, 'invoices info', 'can get invoices info');
};

1;
