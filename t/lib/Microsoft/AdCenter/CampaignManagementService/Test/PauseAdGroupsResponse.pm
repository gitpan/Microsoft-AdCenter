package Microsoft::AdCenter::CampaignManagementService::Test::PauseAdGroupsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PauseAdGroupsResponse;

sub test_can_create_pause_ad_groups_response_and_set_all_fields : Test(1) {
    my $pause_ad_groups_response = Microsoft::AdCenter::CampaignManagementService::PauseAdGroupsResponse->new
    ;

    ok($pause_ad_groups_response);

};

1;
