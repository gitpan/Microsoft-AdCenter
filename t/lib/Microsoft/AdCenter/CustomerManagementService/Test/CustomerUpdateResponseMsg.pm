package Microsoft::AdCenter::CustomerManagementService::Test::CustomerUpdateResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::CustomerUpdateResponseMsg;

sub test_can_create_customer_update_response_msg_and_set_all_fields : Test(1) {
    my $customer_update_response_msg = Microsoft::AdCenter::CustomerManagementService::CustomerUpdateResponseMsg->new
    ;

    ok($customer_update_response_msg);

};

1;
