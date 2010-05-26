package Microsoft::AdCenter::CampaignManagementService::Test::GetAdGroupsByIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdGroupsByIdsResponse;

sub test_can_create_get_ad_groups_by_ids_response_and_set_all_fields : Test(2) {
    my $get_ad_groups_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetAdGroupsByIdsResponse->new
        ->AdGroups('ad groups')
    ;

    ok($get_ad_groups_by_ids_response);

    is($get_ad_groups_by_ids_response->AdGroups, 'ad groups', 'can get ad groups');
};

1;
