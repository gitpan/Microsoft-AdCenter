package Microsoft::AdCenter::AdministrationService::Test::GetRemainingQuotaResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdministrationService;
use Microsoft::AdCenter::AdministrationService::GetRemainingQuotaResponse;

sub test_can_create_get_remaining_quota_response_and_set_all_fields : Test(2) {
    my $get_remaining_quota_response = Microsoft::AdCenter::AdministrationService::GetRemainingQuotaResponse->new
        ->RemainingQuota('remaining quota')
    ;

    ok($get_remaining_quota_response);

    is($get_remaining_quota_response->RemainingQuota, 'remaining quota', 'can get remaining quota');
};

1;
