package Microsoft::AdCenter::CustomerManagementService::Test::GetCreditCardInfoResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetCreditCardInfoResponseMsg;

sub test_can_create_get_credit_card_info_response_msg_and_set_all_fields : Test(2) {
    my $get_credit_card_info_response_msg = Microsoft::AdCenter::CustomerManagementService::GetCreditCardInfoResponseMsg->new
        ->CreditCards('credit cards')
    ;

    ok($get_credit_card_info_response_msg);

    is($get_credit_card_info_response_msg->CreditCards, 'credit cards', 'can get credit cards');
};

1;
