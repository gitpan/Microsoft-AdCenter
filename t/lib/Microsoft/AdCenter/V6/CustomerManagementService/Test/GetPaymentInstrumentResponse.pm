package Microsoft::AdCenter::V6::CustomerManagementService::Test::GetPaymentInstrumentResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CustomerManagementService;
use Microsoft::AdCenter::V6::CustomerManagementService::GetPaymentInstrumentResponse;

sub test_can_create_get_payment_instrument_response_and_set_all_fields : Test(2) {
    my $get_payment_instrument_response = Microsoft::AdCenter::V6::CustomerManagementService::GetPaymentInstrumentResponse->new
        ->GetPaymentInstrumentResult('get payment instrument result')
    ;

    ok($get_payment_instrument_response);

    is($get_payment_instrument_response->GetPaymentInstrumentResult, 'get payment instrument result', 'can get get payment instrument result');
};

1;