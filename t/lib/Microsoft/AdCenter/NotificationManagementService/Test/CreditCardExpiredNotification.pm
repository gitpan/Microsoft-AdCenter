package Microsoft::AdCenter::NotificationManagementService::Test::CreditCardExpiredNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::CreditCardExpiredNotification;

sub test_can_create_credit_card_expired_notification_and_set_all_fields : Test(1) {
    my $credit_card_expired_notification = Microsoft::AdCenter::NotificationManagementService::CreditCardExpiredNotification->new
    ;

    ok($credit_card_expired_notification);

};

1;
