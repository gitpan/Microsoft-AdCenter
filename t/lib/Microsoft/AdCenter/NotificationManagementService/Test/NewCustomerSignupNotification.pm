package Microsoft::AdCenter::NotificationManagementService::Test::NewCustomerSignupNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::NewCustomerSignupNotification;

sub test_can_create_new_customer_signup_notification_and_set_all_fields : Test(1) {
    my $new_customer_signup_notification = Microsoft::AdCenter::NotificationManagementService::NewCustomerSignupNotification->new
    ;

    ok($new_customer_signup_notification);

};

1;
