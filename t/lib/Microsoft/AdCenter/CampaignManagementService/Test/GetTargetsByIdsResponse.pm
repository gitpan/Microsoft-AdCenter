package Microsoft::AdCenter::CampaignManagementService::Test::GetTargetsByIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetTargetsByIdsResponse;

sub test_can_create_get_targets_by_ids_response_and_set_all_fields : Test(2) {
    my $get_targets_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetTargetsByIdsResponse->new
        ->Targets('targets')
    ;

    ok($get_targets_by_ids_response);

    is($get_targets_by_ids_response->Targets, 'targets', 'can get targets');
};

1;
