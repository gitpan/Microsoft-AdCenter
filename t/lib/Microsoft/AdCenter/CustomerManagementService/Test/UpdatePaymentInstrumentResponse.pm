package Microsoft::AdCenter::CustomerManagementService::Test::UpdatePaymentInstrumentResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::UpdatePaymentInstrumentResponse;

sub test_can_create_update_payment_instrument_response_and_set_all_fields : Test(2) {
    my $update_payment_instrument_response = Microsoft::AdCenter::CustomerManagementService::UpdatePaymentInstrumentResponse->new
        ->UpdatePaymentInstrumentResult('update payment instrument result')
    ;

    ok($update_payment_instrument_response);

    is($update_payment_instrument_response->UpdatePaymentInstrumentResult, 'update payment instrument result', 'can get update payment instrument result');
};

1;
