package Microsoft::AdCenter::Test::CustomerManagementService;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;

sub test_can_create_customer_management_service_and_set_all_fields : Test(5) {
    my $customer_management_service = Microsoft::AdCenter::CustomerManagementService->new
        ->EndPoint('somewhere')
        ->Password('password')
        ->UserAccessKey('user access key')
        ->UserName('user name')
    ;

    ok($customer_management_service);

    is($customer_management_service->EndPoint, 'somewhere', 'can get end point');
    is($customer_management_service->Password, 'password', 'can get password');
    is($customer_management_service->UserAccessKey, 'user access key', 'can get user access key');
    is($customer_management_service->UserName, 'user name', 'can get user name');
};

1;
