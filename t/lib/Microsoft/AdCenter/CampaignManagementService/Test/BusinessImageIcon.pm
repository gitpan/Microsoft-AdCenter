package Microsoft::AdCenter::CampaignManagementService::Test::BusinessImageIcon;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BusinessImageIcon;

sub test_can_create_business_image_icon_and_set_all_fields : Test(3) {
    my $business_image_icon = Microsoft::AdCenter::CampaignManagementService::BusinessImageIcon->new
        ->CustomIconAssetId('custom icon asset id')
        ->StandardBusinessIcon('standard business icon')
    ;

    ok($business_image_icon);

    is($business_image_icon->CustomIconAssetId, 'custom icon asset id', 'can get custom icon asset id');
    is($business_image_icon->StandardBusinessIcon, 'standard business icon', 'can get standard business icon');
};

1;
