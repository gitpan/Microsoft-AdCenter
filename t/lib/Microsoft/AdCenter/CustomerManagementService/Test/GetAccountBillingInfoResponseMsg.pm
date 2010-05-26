package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountBillingInfoResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountBillingInfoResponseMsg;

sub test_can_create_get_account_billing_info_response_msg_and_set_all_fields : Test(2) {
    my $get_account_billing_info_response_msg = Microsoft::AdCenter::CustomerManagementService::GetAccountBillingInfoResponseMsg->new
        ->AccountBilling('account billing')
    ;

    ok($get_account_billing_info_response_msg);

    is($get_account_billing_info_response_msg->AccountBilling, 'account billing', 'can get account billing');
};

1;
