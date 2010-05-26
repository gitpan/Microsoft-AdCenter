package Microsoft::AdCenter::CampaignManagementService::Test::UpdateAdGroupsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateAdGroupsResponse;

sub test_can_create_update_ad_groups_response_and_set_all_fields : Test(1) {
    my $update_ad_groups_response = Microsoft::AdCenter::CampaignManagementService::UpdateAdGroupsResponse->new
    ;

    ok($update_ad_groups_response);

};

1;
