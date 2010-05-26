package Microsoft::AdCenter::CampaignManagementService::Test::UpdateSitePlacementsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateSitePlacementsResponse;

sub test_can_create_update_site_placements_response_and_set_all_fields : Test(1) {
    my $update_site_placements_response = Microsoft::AdCenter::CampaignManagementService::UpdateSitePlacementsResponse->new
    ;

    ok($update_site_placements_response);

};

1;
