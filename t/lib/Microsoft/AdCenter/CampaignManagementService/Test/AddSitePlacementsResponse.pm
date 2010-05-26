package Microsoft::AdCenter::CampaignManagementService::Test::AddSitePlacementsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddSitePlacementsResponse;

sub test_can_create_add_site_placements_response_and_set_all_fields : Test(2) {
    my $add_site_placements_response = Microsoft::AdCenter::CampaignManagementService::AddSitePlacementsResponse->new
        ->SitePlacementIds('site placement ids')
    ;

    ok($add_site_placements_response);

    is($add_site_placements_response->SitePlacementIds, 'site placement ids', 'can get site placement ids');
};

1;
