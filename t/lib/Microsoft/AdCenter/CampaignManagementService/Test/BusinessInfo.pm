package Microsoft::AdCenter::CampaignManagementService::Test::BusinessInfo;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BusinessInfo;

sub test_can_create_business_info_and_set_all_fields : Test(3) {
    my $business_info = Microsoft::AdCenter::CampaignManagementService::BusinessInfo->new
        ->Id('id')
        ->Name('name')
    ;

    ok($business_info);

    is($business_info->Id, 'id', 'can get id');
    is($business_info->Name, 'name', 'can get name');
};

1;
