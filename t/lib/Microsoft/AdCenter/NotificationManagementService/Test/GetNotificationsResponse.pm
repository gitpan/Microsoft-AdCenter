package Microsoft::AdCenter::NotificationManagementService::Test::GetNotificationsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::GetNotificationsResponse;

sub test_can_create_get_notifications_response_and_set_all_fields : Test(2) {
    my $get_notifications_response = Microsoft::AdCenter::NotificationManagementService::GetNotificationsResponse->new
        ->GetNotificationsResult('get notifications result')
    ;

    ok($get_notifications_response);

    is($get_notifications_response->GetNotificationsResult, 'get notifications result', 'can get get notifications result');
};

1;
