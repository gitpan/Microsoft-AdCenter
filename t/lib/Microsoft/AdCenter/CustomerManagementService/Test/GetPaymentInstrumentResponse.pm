package Microsoft::AdCenter::CustomerManagementService::Test::GetPaymentInstrumentResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetPaymentInstrumentResponse;

sub test_can_create_get_payment_instrument_response_and_set_all_fields : Test(2) {
    my $get_payment_instrument_response = Microsoft::AdCenter::CustomerManagementService::GetPaymentInstrumentResponse->new
        ->GetPaymentInstrumentResult('get payment instrument result')
    ;

    ok($get_payment_instrument_response);

    is($get_payment_instrument_response->GetPaymentInstrumentResult, 'get payment instrument result', 'can get get payment instrument result');
};

1;
