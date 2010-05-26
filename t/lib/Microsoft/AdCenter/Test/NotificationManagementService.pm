package Microsoft::AdCenter::Test::NotificationManagementService;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;

sub test_can_create_notification_management_service_and_set_all_fields : Test(5) {
    my $notification_management_service = Microsoft::AdCenter::NotificationManagementService->new
        ->EndPoint('somewhere')
        ->Password('password')
        ->UserAccessKey('user access key')
        ->UserName('user name')
    ;

    ok($notification_management_service);

    is($notification_management_service->EndPoint, 'somewhere', 'can get end point');
    is($notification_management_service->Password, 'password', 'can get password');
    is($notification_management_service->UserAccessKey, 'user access key', 'can get user access key');
    is($notification_management_service->UserName, 'user name', 'can get user name');
};

1;
