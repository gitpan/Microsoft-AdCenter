package Microsoft::AdCenter::CampaignManagementService::Test::DeleteTargetFromAdGroupResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteTargetFromAdGroupResponse;

sub test_can_create_delete_target_from_ad_group_response_and_set_all_fields : Test(1) {
    my $delete_target_from_ad_group_response = Microsoft::AdCenter::CampaignManagementService::DeleteTargetFromAdGroupResponse->new
    ;

    ok($delete_target_from_ad_group_response);

};

1;
