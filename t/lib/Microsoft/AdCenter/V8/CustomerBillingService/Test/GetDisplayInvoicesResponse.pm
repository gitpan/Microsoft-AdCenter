package Microsoft::AdCenter::V8::CustomerBillingService::Test::GetDisplayInvoicesResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CustomerBillingService;
use Microsoft::AdCenter::V8::CustomerBillingService::GetDisplayInvoicesResponse;

sub test_can_create_get_display_invoices_response_and_set_all_fields : Test(2) {
    my $get_display_invoices_response = Microsoft::AdCenter::V8::CustomerBillingService::GetDisplayInvoicesResponse->new
        ->Invoices('invoices')
    ;

    ok($get_display_invoices_response);

    is($get_display_invoices_response->Invoices, 'invoices', 'can get invoices');
};

1;
