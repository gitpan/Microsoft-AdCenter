package Microsoft::AdCenter::NotificationManagementService::Test::UserNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::UserNotification;

sub test_can_create_user_notification_and_set_all_fields : Test(4) {
    my $user_notification = Microsoft::AdCenter::NotificationManagementService::UserNotification->new
        ->ActivationCode('activation code')
        ->UserId('user id')
        ->UserName('user name')
    ;

    ok($user_notification);

    is($user_notification->ActivationCode, 'activation code', 'can get activation code');
    is($user_notification->UserId, 'user id', 'can get user id');
    is($user_notification->UserName, 'user name', 'can get user name');
};

1;
