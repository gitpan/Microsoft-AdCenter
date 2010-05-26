package Microsoft::AdCenter::CampaignManagementService::Test::DeleteSitePlacementsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteSitePlacementsResponse;

sub test_can_create_delete_site_placements_response_and_set_all_fields : Test(1) {
    my $delete_site_placements_response = Microsoft::AdCenter::CampaignManagementService::DeleteSitePlacementsResponse->new
    ;

    ok($delete_site_placements_response);

};

1;
