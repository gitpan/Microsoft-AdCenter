package Microsoft::AdCenter::CampaignManagementService::Test::SetTargetToAdGroupResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SetTargetToAdGroupResponse;

sub test_can_create_set_target_to_ad_group_response_and_set_all_fields : Test(1) {
    my $set_target_to_ad_group_response = Microsoft::AdCenter::CampaignManagementService::SetTargetToAdGroupResponse->new
    ;

    ok($set_target_to_ad_group_response);

};

1;
