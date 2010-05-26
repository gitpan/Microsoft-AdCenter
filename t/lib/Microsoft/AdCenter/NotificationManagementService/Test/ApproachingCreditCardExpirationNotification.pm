package Microsoft::AdCenter::NotificationManagementService::Test::ApproachingCreditCardExpirationNotification;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::ApproachingCreditCardExpirationNotification;

sub test_can_create_approaching_credit_card_expiration_notification_and_set_all_fields : Test(1) {
    my $approaching_credit_card_expiration_notification = Microsoft::AdCenter::NotificationManagementService::ApproachingCreditCardExpirationNotification->new
    ;

    ok($approaching_credit_card_expiration_notification);

};

1;
