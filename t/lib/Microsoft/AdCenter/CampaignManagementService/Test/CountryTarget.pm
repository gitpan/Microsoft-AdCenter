package Microsoft::AdCenter::CampaignManagementService::Test::CountryTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::CountryTarget;

sub test_can_create_country_target_and_set_all_fields : Test(2) {
    my $country_target = Microsoft::AdCenter::CampaignManagementService::CountryTarget->new
        ->Bids('bids')
    ;

    ok($country_target);

    is($country_target->Bids, 'bids', 'can get bids');
};

1;
