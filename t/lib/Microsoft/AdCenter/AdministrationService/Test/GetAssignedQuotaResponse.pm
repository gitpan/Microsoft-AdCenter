package Microsoft::AdCenter::AdministrationService::Test::GetAssignedQuotaResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdministrationService;
use Microsoft::AdCenter::AdministrationService::GetAssignedQuotaResponse;

sub test_can_create_get_assigned_quota_response_and_set_all_fields : Test(2) {
    my $get_assigned_quota_response = Microsoft::AdCenter::AdministrationService::GetAssignedQuotaResponse->new
        ->AssignedQuota('assigned quota')
    ;

    ok($get_assigned_quota_response);

    is($get_assigned_quota_response->AssignedQuota, 'assigned quota', 'can get assigned quota');
};

1;
