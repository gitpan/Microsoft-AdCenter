package Microsoft::AdCenter::CampaignManagementService::Test::GetTargetsByAdGroupIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetTargetsByAdGroupIdsResponse;

sub test_can_create_get_targets_by_ad_group_ids_response_and_set_all_fields : Test(2) {
    my $get_targets_by_ad_group_ids_response = Microsoft::AdCenter::CampaignManagementService::GetTargetsByAdGroupIdsResponse->new
        ->Targets('targets')
    ;

    ok($get_targets_by_ad_group_ids_response);

    is($get_targets_by_ad_group_ids_response->Targets, 'targets', 'can get targets');
};

1;
