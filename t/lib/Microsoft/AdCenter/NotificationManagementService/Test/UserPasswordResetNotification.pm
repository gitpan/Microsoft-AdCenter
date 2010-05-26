package Microsoft::AdCenter::NotificationManagementService::Test::UserPasswordResetNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::UserPasswordResetNotification;

sub test_can_create_user_password_reset_notification_and_set_all_fields : Test(1) {
    my $user_password_reset_notification = Microsoft::AdCenter::NotificationManagementService::UserPasswordResetNotification->new
    ;

    ok($user_password_reset_notification);

};

1;
