package Microsoft::AdCenter::CampaignManagementService::Test::PauseSitePlacementsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PauseSitePlacementsResponse;

sub test_can_create_pause_site_placements_response_and_set_all_fields : Test(1) {
    my $pause_site_placements_response = Microsoft::AdCenter::CampaignManagementService::PauseSitePlacementsResponse->new
    ;

    ok($pause_site_placements_response);

};

1;
