package Microsoft::AdCenter::CustomerManagementService::Test::CreditCardInfoUpdateResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::CreditCardInfoUpdateResponseMsg;

sub test_can_create_credit_card_info_update_response_msg_and_set_all_fields : Test(1) {
    my $credit_card_info_update_response_msg = Microsoft::AdCenter::CustomerManagementService::CreditCardInfoUpdateResponseMsg->new
    ;

    ok($credit_card_info_update_response_msg);

};

1;
