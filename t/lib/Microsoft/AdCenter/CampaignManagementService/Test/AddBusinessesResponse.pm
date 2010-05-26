package Microsoft::AdCenter::CampaignManagementService::Test::AddBusinessesResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddBusinessesResponse;

sub test_can_create_add_businesses_response_and_set_all_fields : Test(2) {
    my $add_businesses_response = Microsoft::AdCenter::CampaignManagementService::AddBusinessesResponse->new
        ->BusinessIds('business ids')
    ;

    ok($add_businesses_response);

    is($add_businesses_response->BusinessIds, 'business ids', 'can get business ids');
};

1;
