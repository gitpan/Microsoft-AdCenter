package Microsoft::AdCenter::NotificationManagementService::Test::GetArchivedNotificationsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::GetArchivedNotificationsResponse;

sub test_can_create_get_archived_notifications_response_and_set_all_fields : Test(2) {
    my $get_archived_notifications_response = Microsoft::AdCenter::NotificationManagementService::GetArchivedNotificationsResponse->new
        ->GetArchivedNotificationsResult('get archived notifications result')
    ;

    ok($get_archived_notifications_response);

    is($get_archived_notifications_response->GetArchivedNotificationsResult, 'get archived notifications result', 'can get get archived notifications result');
};

1;
