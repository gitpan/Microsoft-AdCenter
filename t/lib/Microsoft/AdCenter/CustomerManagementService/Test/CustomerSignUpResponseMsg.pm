package Microsoft::AdCenter::CustomerManagementService::Test::CustomerSignUpResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::CustomerSignUpResponseMsg;

sub test_can_create_customer_sign_up_response_msg_and_set_all_fields : Test(4) {
    my $customer_sign_up_response_msg = Microsoft::AdCenter::CustomerManagementService::CustomerSignUpResponseMsg->new
        ->AccountId('account id')
        ->CustomerId('customer id')
        ->UserId('user id')
    ;

    ok($customer_sign_up_response_msg);

    is($customer_sign_up_response_msg->AccountId, 'account id', 'can get account id');
    is($customer_sign_up_response_msg->CustomerId, 'customer id', 'can get customer id');
    is($customer_sign_up_response_msg->UserId, 'user id', 'can get user id');
};

1;
