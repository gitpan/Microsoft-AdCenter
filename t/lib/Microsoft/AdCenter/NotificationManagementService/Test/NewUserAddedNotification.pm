package Microsoft::AdCenter::NotificationManagementService::Test::NewUserAddedNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::NewUserAddedNotification;

sub test_can_create_new_user_added_notification_and_set_all_fields : Test(1) {
    my $new_user_added_notification = Microsoft::AdCenter::NotificationManagementService::NewUserAddedNotification->new
    ;

    ok($new_user_added_notification);

};

1;
